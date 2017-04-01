package com.aloa.manage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.aloa.restaurant.Restaurant;

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
	public List<Restaurant> restaurantList() {
		List<Restaurant> list = sqlSession.selectList("managerMapper.restaurantList");
		
		return list;
	}
	
	public String checkId(String id) {
		String name = sqlSession.selectOne("managerMapper.checkId", id);
		return name;
	}

	@Override
	public void insertRestaurant(Map<String, String> map) {
		sqlSession.insert("managerMapper.insertRestaurant", map);
		
	}

	@Override
	public void updateServer(String email) {
		System.out.println("zzzz"+email);
		int su = sqlSession.update("managerMapper.updateServer", email);
		System.out.println("su"+su);
	}

	@Override
	public List<MemberDTO> memberBlackList() {
		List<MemberDTO> list = sqlSession.selectList("managerMapper.memberBlackList");
		
		return list;
	}

	@Override
	public void memberRemove(String[] checkId) {
		for(int i = 0; i < checkId.length; i++){
			
			sqlSession.delete("managerMapper.memberRemove",Integer.parseInt(checkId[i]));
		}
	}
	
}
