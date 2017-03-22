package com.aloa.account;


import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AccountService {
	@Autowired
	private AccountRepository accountRepository;
	
	@Autowired
	private ModelMapper modelMapper;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	public Account createAccount(AccountDTO.Create dto){
		Account account = modelMapper.map(dto, Account.class);
		String username = dto.getUsername();
		if(accountRepository.findByUsername(username)!=null){
			throw new UserDuplicatedException(username);
		}
		
		account.setUsername(username);
		account.setPassword(passwordEncoder.encode(dto.getPassword()));
		account.setFullName(dto.getFullName());
		
		return accountRepository.save(account);		
	}
	
}
