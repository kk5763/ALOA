package com.aloa.review;

import java.util.Date;

import javax.persistence.*;

@Entity
public class ReviewBoard {
	
	@Id
	private Long reviewNo;
	
	@Column(unique = true)
	private String username;
	
	@Column(unique = true)
	private String resName;
	
	private String content;
	
	private Date createDate;
	
	private int grade;

	public Long getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(Long reviewNo) {
		this.reviewNo = reviewNo;
	}

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
