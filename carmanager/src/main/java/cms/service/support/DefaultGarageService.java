package cms.service.support;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cms.dao.GarageDao;
import cms.domain.Garage;
import cms.service.GarageService;

@Service
public class DefaultGarageService implements GarageService {
  @Autowired GarageDao garageDao;

  @Override
  public List<Garage> listAll(int no) {
    return garageDao.selectList(no);
  }
 
}
