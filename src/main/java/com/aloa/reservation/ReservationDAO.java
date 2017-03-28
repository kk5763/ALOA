package com.aloa.reservation;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertResevation(Map<String, String> map){
		sqlSession.insert("reservationMapper.insertResevation", map);
	}
	
	public void showReservation(String email){
		sqlSession.insert("reservationMapper.showReservation", email);
	}
	
	public void showStoreReservation(String storeName){
		sqlSession.insert("reservationMapper.showStoreReservation", storeName);
	}
}
