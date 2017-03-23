package com.aloa.restaurant;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class RestaurantDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void resInsert(Restaurant restaurant){
		sqlSession.insert("memberMapper.resInsert",restaurant);
		
	}
	
}
