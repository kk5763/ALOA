package com.aloa;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReportController {
	
	@RequestMapping(value="/reportResForm",method=RequestMethod.GET)
	public String reportResForm(Model model,@RequestParam String email
								,@RequestParam int resno){
		
		
		
		
		return "detail/reportRes";
	}
	
	@RequestMapping(value="/reportRevForm",method=RequestMethod.GET)
	public String reportRevForm(Model model,@RequestParam String email
								,@RequestParam int resno){
		
		
		
		return "detail/reportRev";
	}
	
	
	
	
}
