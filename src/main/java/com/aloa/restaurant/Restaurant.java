package com.aloa.restaurant;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Restaurant {
	
	@Id
	private int resno;
	
	private String resname;
	private String bossemail;
	private String resaddress;
	private String restel;
	private String reskind;
	private String resprice;
	private String resparking;
	private String ressaletime;
	private String resrest;
	private String resholiday;
	private Date createdate;
	private String request;
	
	public int getResno() {
		return resno;
	}
	public void setResno(int resno) {
		this.resno = resno;
	}
	public String getResname() {
		return resname;
	}
	public void setResname(String resname) {
		this.resname = resname;
	}
	public String getBossemail() {
		return bossemail;
	}
	public void setBossemail(String bossemail) {
		this.bossemail = bossemail;
	}
	public String getResaddress() {
		return resaddress;
	}
	public void setResaddress(String resaddress) {
		this.resaddress = resaddress;
	}
	public String getRestel() {
		return restel;
	}
	public void setRestel(String restel) {
		this.restel = restel;
	}
	public String getReskind() {
		return reskind;
	}
	public void setReskind(String reskind) {
		this.reskind = reskind;
	}
	public String getResprice() {
		return resprice;
	}
	public void setResprice(String resprice) {
		this.resprice = resprice;
	}
	public String getResparking() {
		return resparking;
	}
	public void setResparking(String resparking) {
		this.resparking = resparking;
	}
	public String getRessaletime() {
		return ressaletime;
	}
	public void setRessaletime(String ressaletime) {
		this.ressaletime = ressaletime;
	}
	public String getResrest() {
		return resrest;
	}
	public void setResrest(String resrest) {
		this.resrest = resrest;
	}
	public String getResholiday() {
		return resholiday;
	}
	public void setResholiday(String resholiday) {
		this.resholiday = resholiday;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
		
}
