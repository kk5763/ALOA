package com.aloa.manage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {
	@RequestMapping(value = "manager/test", method = RequestMethod.GET)
	public String test(){
		return "manager/test";
	}
	
	@RequestMapping(value = "manager/memberManage", method = RequestMethod.GET)
	public String memberManage(){
		return "manager/memberManage";
	}
	
	@RequestMapping(value = "manager/blacklistManage", method = RequestMethod.GET)
	public String blacklistManage(){
		return "manager/blacklistManage";
	}
	
	@RequestMapping(value = "manager/usingRejectedlistManage", method = RequestMethod.GET)
	public String usingRejectedlistManage(){
		return "manager/usingRejectedlistManage";
	}
	
	@RequestMapping(value = "manager/restaurantManage", method = RequestMethod.GET)
	public String restaurantManage(){
		return "manager/restaurantManage";
	}
	
	@RequestMapping(value = "manager/restaurantAgree", method = RequestMethod.GET)
	public String restaurantAgree(){
		return "manager/restaurantAgree";
	}
	
	
}
