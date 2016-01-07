/*package cms.controller.ajax;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cms.dao.MemberDao;
import cms.domain.AjaxResult;
import cms.domain.Member;
import cms.service.MemberService;

@Controller("ajax.AuthController")
@RequestMapping("/auth/ajax/*")
public class AuthController {   
  static public Logger log = Logger.getLogger(AuthController.class);

  @Autowired MemberService memberService;
  @Autowired MemberDao memberDao;
  
//  @RequestMapping(value="login", method=RequestMethod.GET)
//  public String loginform() {
//    return "login";
//  }
  
  @RequestMapping(value="login", method=RequestMethod.POST)
  public AjaxResult login(
      String email,
      String password,
//      String saveEmail,
      HttpServletResponse response,
      HttpSession session) {

    HashMap<String, Object> paramMap = new HashMap<>();
    paramMap.put("email", email);
    paramMap.put("password", password);
        
//    Cookie emailCookie = null;
//    if (saveEmail != null) {
//      log.debug("이메일 저장");
//      emailCookie = new Cookie("email", email);
//      emailCookie.setMaxAge(60 * 60 * 24 * 7);
//      log.debug(emailCookie);
//    } else {
//      log.debug("이메일 저장안함");
//      emailCookie = new Cookie("email", "");
//      emailCookie.setMaxAge(0);
//      log.debug(emailCookie);
//    }
//    response.addCookie(emailCookie);
    
//  Member member = memberDao.selectOneByEmailPassword(paramMap);
    Member member = memberService.retrieve(email, password);
    System.out.println(member);
    
    if (member == null) {
      session.invalidate();
      return new AjaxResult("failure", null);
    }
    
    System.out.println(member.getEmail());
    System.out.println(member.getPassword());
    
    session.setAttribute("loginUser", member);
    
    return new AjaxResult("success", member);
  }
}
*/