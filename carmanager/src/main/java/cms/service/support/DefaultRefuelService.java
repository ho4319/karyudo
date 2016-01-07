package cms.service.support;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cms.dao.RefuelDao;
import cms.domain.Refuel;
import cms.service.RefuelService;

@Service
public class DefaultRefuelService implements RefuelService {
  @Autowired RefuelDao refuelDao;

  @Override
  public List<Refuel> listAll(int no) {
    return refuelDao.selectRefuelList(no);
  }
 
}
