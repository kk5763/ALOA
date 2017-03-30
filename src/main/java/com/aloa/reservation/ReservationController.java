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
	
	@Autowired
	ReservationDAO reservationDAO;

	@RequestMapping(value="/reservation",method=RequestMethod.GET)
	public String reserveView(HttpSession session, Model model){
	
		
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
