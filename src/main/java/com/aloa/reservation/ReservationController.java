package com.aloa.reservation;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReservationController {
	
	private Facebook facebook; //페이스북 api 객체
	private ConnectionRepository cr; //페이스북 연결 정보
	public ReservationController(Facebook facebook, ConnectionRepository cr){
		this.facebook = facebook;
		this.cr = cr;
	}
	
	@Autowired
	ReservationDAO reservationDAO;

	@RequestMapping(value="/reservation",method=RequestMethod.GET)
	public String reserveView(HttpSession session, Model model){
		
		if(cr.findPrimaryConnection(Facebook.class)!=null){
			String[] fields={"id","name","birthday","email","gender"};
			User user = facebook.fetchObject("me", User.class,fields);  //me 는 로그인한 사용자의 정보. me/friends 하면 친구정보가 나옴
			String name = user.getName();
			String email = user.getEmail();
			
			System.out.println("name="+name);
			System.out.println("email="+email);
			
			model.addAttribute("name", name);
			model.addAttribute("email", email);
		}
		
		model.addAttribute("name", "홍길동");
		model.addAttribute("email", "asd");
		
		
		return "reserve/reservation";
	}
	
	@RequestMapping(value="/restaurantReserve", method=RequestMethod.POST)
	public String addReservation(@RequestParam Map<String, String> map, Model model){
		
		reservationDAO.insertResevation(map);

		return "main/home";
	}
	
	/*//메시지함에서 예약 불러오는 곳(일반 사용자)
	public String showReservation(@RequestParam String email){
		
		reservationDAO.showReservation(email);

		return "main/home";//예약현황 가져옴(메시지)
	}
	
	////메시지함에서 예약 불러오는 곳(가맹점)
	public String showStoreReservation(@RequestParam String storeName){
		
		reservationDAO.showStoreReservation(storeName);

		return "main/home";//예약현황 가져옴(메시지)
	}*/
	
	
	
}
