package cms.service;

import cms.domain.Member;

public interface MemberService {
  Member retrieve(String email, String password);
}