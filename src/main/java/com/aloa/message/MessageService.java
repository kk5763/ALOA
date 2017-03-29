package com.aloa.message;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageService {
	@Autowired
	MessageRepository messageRepository;
	
	public Message messageSend(Message dto){
		if(dto.getTitle()!=null && dto.getContents()!=null && dto.getReceiver()!=null && dto.getSender()!= null){
			return messageRepository.save(dto);
		}else{
			return null;
		}
	}
}
