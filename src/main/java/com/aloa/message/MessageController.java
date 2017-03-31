package com.aloa.message;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MessageController {

	@RequestMapping(value="/messageView", method=RequestMethod.GET)
	public String reservationView(Model model){

		return "member/template/messageView";
	}
}

