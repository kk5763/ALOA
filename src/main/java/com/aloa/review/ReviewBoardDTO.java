package com.aloa.review;

import java.util.List;

public class ReviewBoardDTO {
	
	private Reviewboard reviewBoard;
	private List<Imageboard> imageBoard;
	
	public Reviewboard getReviewboard() {
		return reviewBoard;
	}
	public void setReviewboard(Reviewboard reviewBoard) {
		this.reviewBoard = reviewBoard;
	}
	public List<Imageboard> getImageboard() {
		return imageBoard;
	}
	public void setImageboard(List<Imageboard> imageBoard) {
		this.imageBoard = imageBoard;
	}
	
}
