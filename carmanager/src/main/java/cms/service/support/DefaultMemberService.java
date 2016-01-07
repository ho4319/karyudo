package cms.service.support;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cms.dao.MemberDao;
import cms.domain.Member;
import cms.service.MemberService;

@Service
public class DefaultMemberService implements MemberService {
  @Autowired MemberDao memberDao;
  
  @Override
  public Member retrieve(String email, String password) {
    HashMap<String, Object> paramMap = new HashMap<>();
    paramMap.put("email", email);
    paramMap.put("password", password);
    
    return memberDao.selectOneByEmailPassword(paramMap);
  }

}