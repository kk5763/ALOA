package com.aloa.restaurant;

import java.util.List;

import com.aloa.review.Imageboard;

public class RestaurantDTO {
	
	private List<Imageboard> imagelist;
	private Restaurant restaurant;
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
	
}
