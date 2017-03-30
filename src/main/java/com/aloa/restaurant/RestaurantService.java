package com.aloa.restaurant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantService {
	
	@Autowired
	private RestaurantRepository repository;
	
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
	
	public List<Restaurant> findList(){
		List<Restaurant> reslist = repository.findAll();
			
		return  reslist;
<<<<<<< HEAD


	} //findList(목록보여줄거)
=======
	}
>>>>>>> 14e5d6a44486042c4bbfa970c19235bbd4d8fe23
	
	
	public List<Restaurant> findSearchList(String searchName) {
		List<Restaurant> reslist = resDAO.resSearch(searchName);
		
		return reslist;
	}
}












