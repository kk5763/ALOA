package com.aloa.restaurant;

import java.util.List;

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
	
	public List<Restaurant> resSearch(String searchName) { // 검색어와 식당명이 포함되어있으면 정보를 가져옴
		List<Restaurant> list = sqlSession.selectList("memberMapper.resSearch", searchName);
		return list;
	}
	
}
