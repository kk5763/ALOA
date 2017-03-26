package com.aloa.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.aloa.security.UserDetailsImpl;


@Controller
public class AccountController {
	
	@Autowired
	AccountService accountService;
	
	@Autowired
	AccountRepository accountRepository;
	
	
	@RequestMapping(value = "/agreeJoin", method = RequestMethod.GET)
	public ModelAndView agreeJoin(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/agreeJoin");
		
		return mav;
	}
	
	@RequestMapping(value = "/writeForm", method = RequestMethod.GET)
	public String writeForm(){
		return "member/writeForm";
	}
	
	@RequestMapping(value="/login")
	public void login(){}
	
	@RequestMapping(value="/admin")
	public void admin(){}
	
	@RequestMapping(value="/accounts", method=RequestMethod.POST)
	public String createAccounts(Account account){
		
		accountService.createAccount(account);
		
		UserDetailsImpl userDetailsImpl = new UserDetailsImpl(account);
		Authentication authentication = 
				new UsernamePasswordAuthenticationToken(userDetailsImpl, null, userDetailsImpl.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(authentication);
		return "redirect:/";
	}
	
	@RequestMapping(value="/accounts/editUserInfo", method=RequestMethod.GET)
	public String editAccount(){
		return "member/editUserInfo";
	}
}
