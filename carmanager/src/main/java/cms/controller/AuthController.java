package cms.controller;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cms.dao.MemberDao;
import cms.domain.Member;

@Controller
@RequestMapping("/auth/*")
public class AuthController {
  @Autowired MemberDao memberDao;
  
  @RequestMapping(value="login", method=RequestMethod.GET)
  public String loginform() {
    return "login";
  }
  
  @RequestMapping(value="login", method=RequestMethod.POST)
  public String login(
      @RequestParam(defaultValue="0")int memberNo,
      String email,
      @RequestParam(defaultValue="a")String nickName,
      String password,
      @RequestParam(defaultValue="a") String memberPhoto,
      @RequestParam(defaultValue="0")int grade,
      String saveEmail,
      HttpServletResponse response,
      HttpSession session) {
    
    Cookie emailCookie = null;
    if (saveEmail != null) {
      emailCookie = new Cookie("email", email);
      emailCookie.setMaxAge(60 * 60 * 24 * 7);
    } else {
      emailCookie = new Cookie("email", "");
      emailCookie.setMaxAge(0);
    }
    response.addCookie(emailCookie);
    
    HashMap<String, Object> paramMap = new HashMap<>();
    paramMap.put("memberNo", memberNo);
    paramMap.put("email", email);
    paramMap.put("nickName", nickName);
    paramMap.put("password", password);
    paramMap.put("memberPhoto", memberPhoto);
    paramMap.put("grade", grade);
    
    Member member = memberDao.selectOneByEmailPassword(paramMap);
    
    System.out.println(member);
    
    if (member == null) {
      session.invalidate();
      return "LoginFail";
    }
    
    session.setAttribute("loginUser", member);
    
    return "redirect:../main/main.html";
  }
  
  @RequestMapping("logout")
  public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:login.do";
  }
}
