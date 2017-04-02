package com.aloa.report;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ReportDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public void reportResInsert(Reportres reportres) {
		// TODO Auto-generated method stub
		
		sqlSession.insert("reportMapper.reportresInsert",reportres);
		
	}

	public void reportRevInsert(Reportrev reportRev) {
		// TODO Auto-generated method stub
		sqlSession.insert("reportMapper.reportrevInsert",reportRev);
	}
	
	
	
	
}
