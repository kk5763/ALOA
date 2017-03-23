package com.aloa.account;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "aloa_user")
public class Account {
	@Id
	@Column(unique = true)
	private String email;
	
	@NotBlank
	private String password;
	
	@NotBlank
	private String username;
	
	private String tel;
	
	@Temporal(TemporalType.TIMESTAMP)	
	private Date joindate;
	
	private String status;
	
	private int reportcount;
	
	private int server;
	
	private int admin;
	
	private int emailauth;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getReportcount() {
		return reportcount;
	}

	public void setReportcount(int reportcount) {
		this.reportcount = reportcount;
	}

	public int getServer() {
		return server;
	}

	public void setServer(int server) {
		this.server = server;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public int getEmailauth() {
		return emailauth;
	}

	public void setEmailauth(int emailauth) {
		this.emailauth = emailauth;
	}
}
