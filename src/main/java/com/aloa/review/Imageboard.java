package com.aloa.review;


import javax.persistence.*;

@Entity
public class Imageboard {
	
	private String image;
	
	
	@Id
	private int reviewno;
	
	private int resno;


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


	public int getResno() {
		return resno;
	}


	public void setResno(int resno) {
		this.resno = resno;
	}


	
}
