package com.aloa.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aloa.account.Account;
import com.aloa.restaurant.Restaurant;

@Controller
public class ManagerController {
	@Autowired
	ManagerDAO managerDAO;

	@RequestMapping(value = "manager/test", method = RequestMethod.GET)
	public String test() {
		return "manager/test";
	}

	// 회원관리
	@RequestMapping(value = "/manager/memberManage")
	public ModelAndView memberManage() {
		ModelAndView mav = new ModelAndView();

		List<MemberDTO> list = null;
		if (managerDAO.memberList() != null) {
			list = managerDAO.memberList();
		}
		System.out.println(list.get(0).getId());
		mav.addObject("list", list);
		mav.setViewName("manager/memberManage");

		return mav;
	}
	//회원관리-삭제
	@RequestMapping(value = "/manager/listRemove", method = RequestMethod.POST)
	public ModelAndView listRemove(@RequestParam String[] checkId){
		
		managerDAO.memberRemove(checkId);
		return new ModelAndView("redirect:/manager/memberManage");
	}
	@RequestMapping(value = "/manager/blacklistManage")
	public ModelAndView blacklistManage() {
		ModelAndView mav = new ModelAndView();

		List<MemberDTO> list = null;

		if (managerDAO.memberList() != null) {
			list = managerDAO.memberBlackList();

		}

		mav.addObject("list", list);
		mav.setViewName("manager/blacklistManage");

		return mav;
	}

	@RequestMapping(value = "manager/usingRejectedlistManage", method = RequestMethod.GET)
	public String usingRejectedlistManage() {
		return "manager/usingRejectedlistManage";
	}

	@RequestMapping(value = "manager/restaurantManage", method = RequestMethod.GET)
	public ModelAndView restaurantManage(){
		
		List<Restaurant> list =null;
		if(managerDAO.memberList() != null){
			list = managerDAO.restaurantList();
		}
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", list);
		mav.setViewName("manager/restaurantManage");

		return mav;
	}

	@RequestMapping(value = "/manager/restaurantAgree", method = RequestMethod.GET)
	public String restaurantAgree() {
		return "manager/restaurantAgree";
	}
	

	@RequestMapping(value = "manager/restaurantAgreeDetail", method = RequestMethod.GET)
	public String restaurantAgreeDetail(){
		return "manager/restaurantAgreeDetail";
	}
	
	@RequestMapping(value = "manager/restaurantAgreeDetailCheckId", method = RequestMethod.GET)
	public ModelAndView restaurantAgreeDetailCheckId(@RequestParam String id){
		
		ModelAndView mav = new ModelAndView();
		
		Account check = managerDAO.checkId(id);
		//System.out.println("check="+check);
		
		if(check.getEmail()!=null){
			if(check.getServer()==1){//이미 가맹점이있는지 여부
				mav.addObject("checkid", 3);
			}
			else{
				mav.addObject("checkid", 1);
				mav.addObject("checkokId", id);
			}
		}
		else {
			mav.addObject("checkid", 2);
		}
		
		mav.setViewName("manager/restaurantAgreeDetail");
		return mav;
	}
	
	@RequestMapping(value = "manager/restaurantAgreeOk", method = RequestMethod.POST)
	public ModelAndView restaurantAgreeOk(@RequestParam Map<String, String> map){
			
		//맛집등록(이미지도)
		managerDAO.insertRestaurant(map);

		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("manager/restaurantAgreeDetail");

		return null;//아직 관리자 메인페이지를 안만듦
	}

	@RequestMapping(value = "manager/reviewClaim", method = RequestMethod.GET)
	public String reviewClaim() {
		return "manager/reviewClaim";
	}

	@RequestMapping(value = "manager/restaurantClaim", method = RequestMethod.GET)
	public String restaurantClaim() {
		return "manager/restaurantClaim";
	}
	
	

}
