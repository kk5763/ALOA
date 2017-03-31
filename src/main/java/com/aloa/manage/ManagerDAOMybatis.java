package com.aloa.manage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component("ManagerDAO")
@Transactional
public class ManagerDAOMybatis implements ManagerDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> memberList() {
		List<MemberDTO> list = sqlSession.selectList("managerMapper.memberList");
		
		return list;
	}

	@Override
	public List<RestaurantDTO> restaurantList() {
		List<RestaurantDTO> list = sqlSession.selectList("managerMapper.restaurantList");
		
		return list;
	}
	
}
