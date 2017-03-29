package com.aloa.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.aloa.account.Account;
import com.aloa.account.AccountRepository;

@RestController
public class MessageRestController {
	
	@Autowired
	AccountRepository accountRepository;
	
	@Autowired
	MessageService messageService;
	
	@Autowired
	MessageRepository messageRepository;
	
	@RequestMapping(value="/sendEmail/{id}", method=RequestMethod.POST)
	public ResponseEntity sendEmail(@PathVariable Long id,
									Message dto){
		Account account = accountRepository.findOne(id);
		if(account == null){
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		Message message = messageService.messageSend(dto);
		if(message == null){
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	@RequestMapping(value="/listEmail/{id}", method=RequestMethod.GET)
	public ResponseEntity<List<Message>> listEmail(@PathVariable Long id){
		
		List<Message> messageList = messageRepository.findByReceiver(id);
		if(messageList.size()==0){
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(messageList, HttpStatus.OK);
	}
}
