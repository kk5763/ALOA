package com.aloa.restaurant;

import java.util.List;

import com.aloa.review.Reviewboard;

public class RestaurantDTO {
	
	private Restaurant restaurant;
	private List<Reviewboard> reviewlist;
	public Restaurant getRestaurant() {
		return restaurant;
	}
	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}
	public List<Reviewboard> getReviewlist() {
		return reviewlist;
	}
	public void setReviewlist(List<Reviewboard> reviewlist) {
		this.reviewlist = reviewlist;
	}
	
}
