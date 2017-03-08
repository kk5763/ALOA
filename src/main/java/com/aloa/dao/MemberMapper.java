package com.aloa.dao;

import com.aloa.dto.MemberVO;

public interface MemberMapper {
	public MemberVO inspectEmail(String email) throws Exception;
}
