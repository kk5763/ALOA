package com.aloa.reservation;

import javax.persistence.Entity;
import javax.persistence.Id;

public class ReservationDTO {

	private int reserverNo;
	private String reserveStore;
	private String reserveName;
	private String reserveTel;
	private String reserveEmail;
	private String reserveRequest;
	

	private String reserveDate;
	private String reserveTime; 
	private String reserveNumber;
	private String reserveAddress;
	
	public String getReserveStore() {
		return reserveStore;
	}
	public void setReserveStore(String reserveStore) {
		this.reserveStore = reserveStore;
	}
	public String getReserveName() {
		return reserveName;
	}
	public void setReserveName(String reserveName) {
		this.reserveName = reserveName;
	}
	public String getReserveTel() {
		return reserveTel;
	}
	public void setReserveTel(String reserveTel) {
		this.reserveTel = reserveTel;
	}
	public String getReserveEmail() {
		return reserveEmail;
	}
	public void setReserveEmail(String reserveEmail) {
		this.reserveEmail = reserveEmail;
	}
	public String getReserveRequest() {
		return reserveRequest;
	}
	public void setReserveRequest(String reserveRequest) {
		this.reserveRequest = reserveRequest;
	}
	public int getReserverNo() {
		return reserverNo;
	}
	public void setReserverNo(int reserverNo) {
		this.reserverNo = reserverNo;
	}
	public String getReserveDate() {
		return reserveDate;
	}
	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}
	public String getReserveTime() {
		return reserveTime;
	}
	public void setReserveTime(String reserveTime) {
		this.reserveTime = reserveTime;
	}
	public String getReserveNumber() {
		return reserveNumber;
	}
	public void setReserveNumber(String reserveNumber) {
		this.reserveNumber = reserveNumber;
	}
	public String getReserveAddress() {
		return reserveAddress;
	}
	public void setReserveAddress(String reserveAddress) {
		this.reserveAddress = reserveAddress;
	}
	
	
}
