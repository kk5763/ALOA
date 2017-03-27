package com.aloa.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class BoardController {

	
	@RequestMapping(value="/List1",method=RequestMethod.GET)
	public ModelAndView List1(){
		

		ModelAndView mav = new ModelAndView();
		mav.setViewName("list/List1");
		return mav;
		
	}
	
	@RequestMapping(value="/List2",method=RequestMethod.GET)
	public ModelAndView List2(){
		

		ModelAndView mav = new ModelAndView();
		mav.setViewName("list/List2");
		return mav;
		
	}
	
	
	  
}
