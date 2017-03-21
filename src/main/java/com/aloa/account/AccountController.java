package com.aloa.account;

import javax.validation.Valid;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.aloa.error.ErrorResponse;


@RestController
public class AccountController {
	
	@Autowired
	AccountService accountService;
	
	@Autowired
	ModelMapper modelMapper;
	
	/*@RequestMapping(value="/inspect", method=RequestMethod.GET)
	public InspectVO inspect(InspectVO inspectVO){
		
		try {
			boolean inspect = memberService.inspectEmail(inspectVO.getData());
			if(inspect) inspectVO.setResult(true);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return inspectVO;
	}*/
	@RequestMapping(value="accounts", method=RequestMethod.POST)
	public ResponseEntity createAccounts(@RequestBody @Valid AccountDTO.Create dto,
										BindingResult result){
		if(result.hasErrors()){
			ErrorResponse errorResponse = new ErrorResponse();
			errorResponse.setCode("BAD_REQUEST");
			errorResponse.setMessage("잘못된 요청입니다.");
			return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
		}
		
		Account account = accountService.createAccount(dto);
		
		return new ResponseEntity<>(modelMapper.map(account, AccountDTO.Response.class), HttpStatus.OK);
	}
	
}
