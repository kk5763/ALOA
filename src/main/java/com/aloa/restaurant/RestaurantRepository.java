package com.aloa.restaurant;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RestaurantRepository extends JpaRepository<Restaurant,Integer>{
	Restaurant findByResno(int resno);
	List<Restaurant> findAll();
}
