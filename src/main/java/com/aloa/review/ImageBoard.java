package com.aloa.review;

import java.util.Date;

import javax.persistence.*;

@Entity
public class ImageBoard {
	
	private String image;
	
	private String username;
	
	private String resName;
	
	private Date createDate;
	
	@Id
	private Long reviewNo;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Long getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(Long reviewNo) {
		this.reviewNo = reviewNo;
	}
	
}
