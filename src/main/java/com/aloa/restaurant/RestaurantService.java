package com.aloa.restaurant;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantService {
	
	@Autowired
	private RestaurantRepository repository;
	
	@Autowired
	private ModelMapper modelMapper;
	
	//create
	
	//findOne(상세페이지)
	public Restaurant findOne(int resNo){
		
		Restaurant restaurant = repository.findByResNo(resNo);
		
		if(restaurant==null){
			throw new DuplicatedException();
		}
		return restaurant;
	}
	
	//findList(목록보여줄거)
	
	
	
}
