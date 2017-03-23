package com.aloa.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.aloa.dto.InspectVO;
import com.aloa.service.MemberService;

@RestController
public class AccountRestController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/inspect", method=RequestMethod.POST)
	public InspectVO inspect(InspectVO inspectVO){
		
		try {
			boolean inspect = memberService.inspectEmail(inspectVO.getData());
			if(inspect) inspectVO.setResult(true);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return inspectVO;
	}
}
