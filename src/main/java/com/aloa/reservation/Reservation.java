package com.aloa.reservation;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reservation")
public class Reservation {
	@Id
	@GeneratedValue
	private Long id;
	
	private int resno;
	
	private Long userid;
	
	private String reservedate;
	
	private String reservetime;
	
	private String member;
	
	private String reserverrequest;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getResno() {
		return resno;
	}

	public void setResno(int resno) {
		this.resno = resno;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getReservedate() {
		return reservedate;
	}

	public void setReservedate(String reservedate) {
		this.reservedate = reservedate;
	}

	public String getReservetime() {
		return reservetime;
	}

	public void setReservetime(String reservetime) {
		this.reservetime = reservetime;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getReserverrequest() {
		return reserverrequest;
	}

	public void setReserverrequest(String reserverrequest) {
		this.reserverrequest = reserverrequest;
	}
	
	
}
