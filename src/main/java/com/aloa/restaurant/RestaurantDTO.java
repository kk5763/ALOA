package com.aloa.restaurant;

import java.util.List;

import com.aloa.account.Account;
import com.aloa.review.Imageboard;
import com.aloa.review.Reviewboard;

public class RestaurantDTO {
	
	private Restaurant restaurant; // Restaurant - DTO
	private List<Imageboard> imageList; // Restaurant - Image
	private List<Reviewboard> reviewList;
	private List<Integer> resReviewCount;
	private List<Double> resGrade;
	
	
	public List<Double> getResGrade() {
		return resGrade;
	}
	public void setResGrade(List<Double> resGrade) {
		this.resGrade = resGrade;
	}
	public List<Integer> getResReviewCount() {
		return resReviewCount;
	}
	public void setResReviewCount(List<Integer> resReviewCount) {
		this.resReviewCount = resReviewCount;
	}
	public Restaurant getRestaurant() {
		return restaurant;
	}
	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}
	public List<Imageboard> getImageList() {
		return imageList;
	}
	public void setImageList(List<Imageboard> imagelist) {
		this.imageList = imagelist;
	}
	public List<Reviewboard> getReviewList() {
		return reviewList;
	}
	public void setReviewList(List<Reviewboard> reviewList) {
		this.reviewList = reviewList;
	}

	
}
