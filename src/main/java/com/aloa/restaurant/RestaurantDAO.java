package com.aloa.restaurant;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Component
public class RestaurantDAO {

	private SqlSessionTemplate sqlSession;
	
	public int resInsert(Restaurant restaurant){
		
		return sqlSession.insert("resInsert",restaurant);
		
	}
	
}
