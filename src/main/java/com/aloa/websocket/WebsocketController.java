package com.aloa.websocket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebsocketController {
	
	@RequestMapping("/gege")
	public String gege(){
		return "websocketTest/index";
	}
}
