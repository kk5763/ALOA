package com.aloa.review;

import java.util.Date;

import javax.persistence.*;

@Entity
public class ImageBoard {
	
	private String image;
	
	
	@Id
	private int reviewno;


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public int getReviewno() {
		return reviewno;
	}


	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}


	
}
