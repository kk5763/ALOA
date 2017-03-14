package com.aloa.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aloa.dto.InspectVO;
import com.aloa.service.MemberService;

@Controller
public class MainController {
	@Autowired
	MemberService memberService;
	
	
	private Facebook facebook; //페이스북 api 객체
	private ConnectionRepository cr; //페이스북 연결 정보
	public MainController(Facebook facebook, ConnectionRepository cr){
		this.facebook = facebook;
		this.cr = cr;
	}
	
	
	@RequestMapping("/")
	public String home(Model model, HttpSession session){
		if(cr.findPrimaryConnection(Facebook.class)!=null){
			String[] fields={"id","name","birthday","email","gender"};
			User user = facebook.fetchObject("me", User.class,fields);  //me 는 로그인한 사용자의 정보. me/friends 하면 친구정보가 나옴
			String name = user.getName();
			String id = user.getId();
			String birthday = user.getBirthday();
			String email = user.getEmail();
			String gender = user.getGender();
			
			
			model.addAttribute("name", name);
			model.addAttribute("id", id);
			model.addAttribute("birthday", birthday);
			model.addAttribute("email", email);
			model.addAttribute("gender", gender);
			
			
			session.setAttribute("username", name);
		}
		
		return "main/home";
	}
	
	@ResponseBody
	@RequestMapping(value="/inspect", method=RequestMethod.GET)
	public InspectVO inspect(InspectVO inspectVO){
		
		try {
			boolean inspect = memberService.inspectEmail(inspectVO.getData());
			if(inspect) inspectVO.setResult(true);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return inspectVO;
	}
	
	@RequestMapping(value="/detailView",method=RequestMethod.GET)
	public String detailView(){
		
		
		return "detail/detailView";
	}
	
	@RequestMapping(value = "/agreeJoin", method = RequestMethod.GET)
	public ModelAndView agreeJoin(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/agreeJoin");
		
		return mav;
	}
	
	@RequestMapping(value = "/writeForm", method = RequestMethod.POST)
	public ModelAndView writeForm(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/writeForm");
		
		return mav;
	}
	
	
	
}