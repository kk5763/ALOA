package com.aloa.account;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AccountService {
	@Autowired
	private AccountRepository accountRepository;
		
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	public Account createAccount(Account dto){
		String username = dto.getEmail();
		if(accountRepository.findByEmail(username)!=null){
			throw new UserDuplicatedException(username);
		}
		dto.setPassword(passwordEncoder.encode(dto.getPassword()));
		
		return accountRepository.save(dto);		
	}
}
