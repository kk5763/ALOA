package com.aloa.restaurant;

import java.util.List;

import com.aloa.review.Imageboard;
import com.aloa.review.ReviewBoardDTO;
import com.aloa.review.Reviewboard;

public class RestaurantDTO {
	
	private List<Imageboard> imagelist;
	private Restaurant restaurant;
	private List<ReviewBoardDTO> reviewlist;
	
	public List<Imageboard> getImagelist() {
		return imagelist;
	}
	public void setImagelist(List<Imageboard> imagelist) {
		this.imagelist = imagelist;
	}
	public Restaurant getRestaurant() {
		return restaurant;
	}
	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}
	public List<ReviewBoardDTO> getReviewlist() {
		return reviewlist;
	}
	public void setReviewlist(List<ReviewBoardDTO> reviewlist) {
		this.reviewlist = reviewlist;
	}
	
}
