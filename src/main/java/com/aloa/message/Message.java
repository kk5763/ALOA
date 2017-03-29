package com.aloa.message;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Message {
	
	@Id
	private Long messageNo;
	
	private Long receiver;
	
	
	private Long sender;
	
	
	private String title;
	
	private String contents;

	public Long getSender() {
		return sender;
	}

	public void setSender(Long sender) {
		this.sender = sender;
	}

	public Long getReceiver() {
		return receiver;
	}

	public void setReceiver(Long receiver) {
		this.receiver = receiver;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
}
