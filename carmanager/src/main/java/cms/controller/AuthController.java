/*package cms.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cms.domain.Member;
import cms.service.MemberService;

@Controller
@RequestMapping("/auth/*")
public class AuthController {
  @Autowired MemberService memberService;
  
  @RequestMapping(value="login", method=RequestMethod.GET)
  public String loginform() {
    return "login";
  }
  
  @RequestMapping(value="login", method=RequestMethod.POST)
  public String login(
      String email,
      String password,
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
    
    Member member = memberService.retrieve(email, password);
    
    if (member == null) {
      session.invalidate();
      return "LoginFail";
    }
    
    session.setAttribute("loginUser", member);
    
    return "redirect:../main/main.do";
  }
  
  @RequestMapping("logout")
  public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:login.do";
  }
}
*/