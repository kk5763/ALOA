package com.aloa.restaurant;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RestaurantRepository extends JpaRepository<Restaurant,Long>{
	Restaurant findByResName(String resName);
	List<Restaurant> findAll();
}
