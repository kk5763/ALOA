package com.aloa.review;

import java.util.Date;

import javax.persistence.*;

@Entity
public class ReviewBoard {
	
	@Id
	private int reviewno;
	
	@Column(unique = true)
	private String email;
	
	@Column(unique = true)
	private Long resno;
	
	private String content;
	
	private Date createdate;
	
	private int grade;

	public int getReviewno() {
		return reviewno;
	}

	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getResno() {
		return resno;
	}

	public void setResno(Long resno) {
		this.resno = resno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	
	
	
	
}
