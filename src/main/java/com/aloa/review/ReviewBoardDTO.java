package com.aloa.review;

import java.util.List;

public class ReviewBoardDTO {
	
	private ReviewBoard reviewBoard;
	private List<ImageBoard> imageBoard;
	
	public ReviewBoard getReviewBoard() {
		return reviewBoard;
	}
	public void setReviewBoard(ReviewBoard reviewBoard) {
		this.reviewBoard = reviewBoard;
	}
	public List<ImageBoard> getImageBoard() {
		return imageBoard;
	}
	public void setImageBoard(List<ImageBoard> imageBoard) {
		this.imageBoard = imageBoard;
	}
	
}
