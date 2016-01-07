package cms.dao;

import java.util.List;

import cms.domain.Garage;

public interface GarageDao {
  public List<Garage> selectList(int no);
  
  
}
