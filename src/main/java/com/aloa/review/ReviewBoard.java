package com.aloa.review;

import java.util.Date;

import javax.persistence.*;

@Entity
public class ReviewBoard {
	
	@Id
	private int reviewNo;
	
	@Column(unique = true)
	private String email;
	
	@Column(unique = true)
	private Long resNo;
	
	private String content;
	
	private Date createDate;
	
	private int grade;

	

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getResNo() {
		return resNo;
	}

	public void setResNo(Long resNo) {
		this.resNo = resNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	
	
	
	
	
	
}
