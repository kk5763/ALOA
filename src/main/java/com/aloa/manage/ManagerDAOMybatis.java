package com.aloa.manage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.aloa.account.Account;
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
	
	public Account checkId(String id) {
		Account account = sqlSession.selectOne("managerMapper.checkId", id);
		return account;
	}

	@Override
	public void insertRestaurant(Map<String, String> map) {
		sqlSession.insert("managerMapper.insertRestaurant", map);
		
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

	@Override
	public void restaurantDelete(int[] checkResno) {
		for(int i = 0; i < checkResno.length; i++){
			
			sqlSession.delete("managerMapper.restaurantDelete",checkResno[i]);
		}
		
	}

	@Override
	public Restaurant restaurantInfo(String resno) {
		Restaurant restaurant = sqlSession.selectOne("managerMapper.restaurantInfo", Integer.parseInt(resno));
		return restaurant;
	}

	@Override
	public void restaurantUpdate(Restaurant restaurant) {
		sqlSession.update("managerMapper.restaurantUpdate", restaurant);
	}
	
	public List<ReportRevDTO> revClaimList() {
		List<ReportRevDTO> list = sqlSession.selectList("managerMapper.revClaimList");
		return list;
	}

	@Override
	public List<ReportResDTO> resClaimList() {
		List<ReportResDTO> list = sqlSession.selectList("managerMapper.resClaimList");
		
		return list;
	}

}
