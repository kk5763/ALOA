package com.aloa.restaurant;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Restaurant {
	
	@Id
	@Column(unique = true)
	private String username; 
	
	@Column(unique = true)
	private String resName;
	private String resAddress;
	private String resTel;
	private String resKind;
	private String resPrice;
	private String resParking;
	private String resSaletime;
	private String resRest;
	private String resHoliday;
	private Date createDate;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getResAddress() {
		return resAddress;
	}

	public void setResAddress(String resAddress) {
		this.resAddress = resAddress;
	}

	public String getResTel() {
		return resTel;
	}

	public void setResTel(String resTel) {
		this.resTel = resTel;
	}

	public String getResKind() {
		return resKind;
	}

	public void setResKind(String resKind) {
		this.resKind = resKind;
	}

	public String getResPrice() {
		return resPrice;
	}

	public void setResPrice(String resPrice) {
		this.resPrice = resPrice;
	}

	public String getResParking() {
		return resParking;
	}

	public void setResParking(String resParking) {
		this.resParking = resParking;
	}

	public String getResSaletime() {
		return resSaletime;
	}

	public void setResSaletime(String resSaletime) {
		this.resSaletime = resSaletime;
	}

	public String getResRest() {
		return resRest;
	}

	public void setResRest(String resRest) {
		this.resRest = resRest;
	}

	public String getResHoliday() {
		return resHoliday;
	}

	public void setResHoliday(String resHoliday) {
		this.resHoliday = resHoliday;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
