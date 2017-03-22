package com.aloa.restaurant;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RestaurantRepository extends JpaRepository<Restaurant,Integer>{
	Restaurant findByResNo(int resNo);
	List<Restaurant> findAll();
}
