package cms.dao;

import java.util.Map;

import cms.domain.Member;

public interface MemberDao {
  Member selectOneByEmailPassword(Map<String,Object> paramMap);
}
