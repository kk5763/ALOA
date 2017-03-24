package com.aloa.review;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void reviewInsert(ReviewBoard dto){
		sqlSession.insert("reviewMapper.reviewInsert",dto);
	}
}
