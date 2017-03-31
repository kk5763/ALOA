package com.aloa.restaurant;

import java.util.List;

import com.aloa.review.Imageboard;
import com.aloa.review.Reviewboard;

public class RestaurantDTO {
	
	private Restaurant restaurant; // Restaurant - DTO
	private List<Imageboard> imagelist; // Restaurant - Image
	private List<Reviewboard> reviewList;
	
	public Restaurant getRestaurant() {
		return restaurant;
	}
	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}
	public List<Imageboard> getImagelist() {
		return imagelist;
	}
	public void setImagelist(List<Imageboard> imagelist) {
		this.imagelist = imagelist;
	}
	public List<Reviewboard> getReviewList() {
		return reviewList;
	}
	public void setReviewList(List<Reviewboard> reviewList) {
		this.reviewList = reviewList;
	}

	
}
