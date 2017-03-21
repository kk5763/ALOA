package com.aloa.restaurant;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RestaurantRepository extends JpaRepository<Restaurant,Long>{
	Restaurant findByResName(String resName);
}
