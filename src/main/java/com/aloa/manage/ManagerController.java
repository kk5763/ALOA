package com.aloa.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	//회원관리- 수정 뷰
	@RequestMapping(value = "/manager/memberUpdateView", method = RequestMethod.POST)
	public ModelAndView memberUpdateView(@RequestParam String findId ){
		MemberDTO memberDTO = managerDAO.sepcificMember(findId);
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberDTO", memberDTO);
		mav.setViewName("manager/memberUpdate");
		
		return mav;
	}
	
	//회원관리 - 수정
	@RequestMapping(value = "/manager/memberUpdate", method = RequestMethod.POST)
	public ModelAndView memberUpdate(@ModelAttribute MemberDTO memberDTO){
		managerDAO.memberUpdate(memberDTO);
		
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

	//맛집관리
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
	
	//맛집관리삭제
	@RequestMapping(value = "/manager/restaurantRemove", method = RequestMethod.POST)
	public ModelAndView restaurantRemove(@RequestParam int[] checkResno) {
		
		managerDAO.restaurantDelete(checkResno);
	
		return (ModelAndView)new ModelAndView("redirect:/manager/restaurantManage");

	}
	
	//맛집관리수정뷰
	@RequestMapping(value = "/manager/restaurantUpdateView", method = RequestMethod.POST)
	public ModelAndView restaurantUpdateView(@RequestParam String findresno) {
		Restaurant restaurant = managerDAO.restaurantInfo(findresno);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("restaurant", restaurant);
		mav.setViewName("manager/restaurantUpdate");
		
		return mav;
	}
	
	//맛집관리수정
		@RequestMapping(value = "/manager/restaurantUpdate", method = RequestMethod.POST)
		public ModelAndView restaurantUpdate(@ModelAttribute Restaurant restaurant) {
			managerDAO.restaurantUpdate(restaurant);
			
			return (ModelAndView)new ModelAndView("redirect:/manager/restaurantManage");
		}

	
	@RequestMapping(value = "/manager/restaurantAgree", method = RequestMethod.GET)
	public String restaurantAgree() {
		return "manager/restaurantAgree";
	}
	
	//맛집신청승인페이지
	@RequestMapping(value = "manager/restaurantAgreeDetail", method = RequestMethod.GET)
	public String restaurantAgreeDetail(){
		return "manager/restaurantAgreeDetail";
	}
	
	//맛집신청페이지 id체크
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
	
	//맛집신청승인완료
	@RequestMapping(value = "manager/restaurantAgreeOk", method = RequestMethod.POST)
	public ModelAndView restaurantAgreeOk(@RequestParam Map<String, String> map){
			
		//맛집등록(이미지도)
		managerDAO.insertRestaurant(map);

		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("manager/restaurantAgreeDetail");

		return null;//아직 관리자 메인페이지를 안만듦
	}
	
	//리뷰신고 db받기 기본틀(추후 수정 필요)
	@RequestMapping(value = "manager/reviewClaim", method = RequestMethod.GET)
	public ModelAndView reviewClaim() {
		
		List<ReportRevDTO> list = null;
		if(managerDAO.revClaimList() != null){
			list = managerDAO.revClaimList();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("manager/reviewClaim");
		return mav;
	}
	
	//맛집신고 db받기 기본틀(추후 수정 필요)--restaurantClaim.jsp파일에서 처리여부, 처리상태 차이? 몰라서 jsp에는 값 안 뿌렸음 db에서 오는 것만 확인
	@RequestMapping(value = "manager/restaurantClaim", method = RequestMethod.GET)
	public ModelAndView restaurantClaim() {
		List<ReportResDTO> list = null;
		
		if(managerDAO.resClaimList()!= null){
			list = managerDAO.resClaimList();
		}
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("manager/restaurantClaim");
		return mav;
	}
	
	

}
