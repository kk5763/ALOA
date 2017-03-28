package com.aloa.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.aloa.restaurant.RestaurantDTO;

import board.bean.BoardDTO;
import imageboard.bean.ImageboardDTO;

@Transactional
@Component("MainDAO")
public class MainDAOMybatis implements MainDAO {
	
	@Autowired
	private SqlSession sqlSession;

	
	
	

}
