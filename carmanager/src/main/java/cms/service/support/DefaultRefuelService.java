package cms.service.support;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cms.dao.RefuelDao;
import cms.domain.Refuel;
import cms.service.RefuelService;

@Service
public class DefaultRefuelService implements RefuelService {
	@Autowired RefuelDao refuelDao;

	@Override
	public List<Refuel> listAll(int no) {
		return refuelDao.selectRefuelList(no);
	}

	@Override
	public List<Refuel> costAvg() {
		return refuelDao.selectCostAvg();
	}
	
	
}
