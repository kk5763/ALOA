package com.aloa.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AccountRestController {
	
	@Autowired
	AccountService accountService;
	
	@Autowired
	AccountRepository accountRepository;
	
	@RequestMapping(value="/inspect", method=RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	public boolean inspect(@RequestParam String email){
		
		Account account = accountRepository.findByEmail(email);
		if(account != null){
			return false;
		}
		return true;
	}
}
