package com.aloa.message;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Message {
	
	@Id
	@GeneratedValue
	private Long messageNo;
	
	private Long receiver;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date sendtime;
	
	private Long sender;
	
	
	private String title;
	
	private String contents;
	
	
	public Long getMessageNo() {
		return messageNo;
	}

	public void setMessageNo(Long messageNo) {
		this.messageNo = messageNo;
	}

	public Date getSendtime() {
		return sendtime;
	}

	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}

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
