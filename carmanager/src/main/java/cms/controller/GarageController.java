package cms.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cms.domain.Garage;
import cms.domain.Refuel;
import cms.service.GarageService;
import cms.service.RefuelService;

@Controller
@RequestMapping("/main/*")
public class GarageController {
  public static final Logger log = Logger.getLogger(GarageController.class);
  
  @Autowired GarageService garageService;
  @Autowired RefuelService refuelService;
  @Autowired ServletContext servletContext;
  
  @RequestMapping("list")
  public Object carList() throws Exception {

  	System.out.println("들어간다 ");
		int no = 1;

    log.debug("message");
    List<Garage> garages = garageService.listAll(no);
    List<Refuel> refuels = refuelService.listAll(no);
    for (Garage g : garages) {
      log.debug(g.getNickName());
    }
    for (Refuel r : refuels) {
      log.debug(r.toString());
    }
    HashMap<String, Object> resultMap = new HashMap<>();
    resultMap.put("status", "success");
    resultMap.put("data", garages);
    resultMap.put("refuelList", refuels);
    //!!
    return resultMap;  

  }
  
}
