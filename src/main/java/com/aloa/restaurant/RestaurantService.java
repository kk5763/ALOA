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
	
	@Autowired
	private RestaurantDAO resDAO;
	
	//create
	
	//findOne(상세페이지)
	public Restaurant findOne(int resno){
		
		Restaurant restaurant = repository.findByResno(resno);
		
		if(restaurant==null){
			throw new DuplicatedException();
		}
		return restaurant;
	}
	
	public void createRes(Restaurant restaurant){
		resDAO.resInsert(restaurant);
	}
	
	
	
	//findList(목록보여줄거)
	
	
	
}
