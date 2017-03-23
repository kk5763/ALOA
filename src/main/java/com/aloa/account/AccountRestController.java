package com.aloa.account;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.aloa.dto.InspectVO;

@RestController
public class AccountRestController {
	
	@RequestMapping(value="/inspect", method=RequestMethod.GET)
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
