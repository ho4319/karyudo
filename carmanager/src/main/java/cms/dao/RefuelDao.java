package cms.dao;

import java.util.List;

import cms.domain.Refuel;

public interface RefuelDao {
	public List<Refuel> selectRefuelList(int no);
	
	public List<Refuel> selectCostAvg();
}
