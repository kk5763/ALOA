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
		System.out.println(reportres.getDeemail()+"//"+reportres.getReemail()+"//"+reportres.getResno());
		
		sqlSession.insert("reportMapper.reportresInsert",reportres);
		
	}
	
	
	
	
}
