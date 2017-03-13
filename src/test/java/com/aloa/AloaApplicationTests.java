package com.aloa;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AloaApplicationTests {

	@Test
	public void contextLoads() {
	}
	//db연결 테스트
	
	@Autowired
	private DataSource ds;
	
	@Test
	public void testConn() throws SQLException{
		System.out.println("ds : " + ds);
	}
	
	@Autowired
	private SqlSessionFactory sqlSession;
	
	@Test
	public void testSession(){
		System.out.println("sqlSession : " + sqlSession);
	}

}
