package com.aloa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aloa.dao.MemberMapper;

@Service
public class MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	
	public boolean inspectEmail(String email) throws Exception{
		if(memberMapper.inspectEmail(email)==null)
			return true;
		return false;
	}
}
