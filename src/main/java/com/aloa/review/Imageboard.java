package com.aloa.review;

import javax.persistence.*;

@Entity
public class Imageboard {
	@Id
	private int resno;
	private String image;
	public int getResno() {
		return resno;
	}
	public void setResno(int resno) {
		this.resno = resno;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
}
