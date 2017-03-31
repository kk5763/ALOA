package com.aloa.review;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void reviewInsert(Reviewboard dto){
		sqlSession.insert("reviewMapper.reviewInsert",dto);
	}
	
	public List<Reviewboard> reviewlist(int resno){
		
		List<Reviewboard> list = sqlSession.selectList("reviewMapper.reviewList", resno);
		return list;
	}

	public List<Imageboard> imagelist(int resno) {
		
		List<Imageboard> list = sqlSession.selectList("reviewMapper.imagelist",resno);
		return list;
	}
}
