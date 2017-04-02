package com.aloa.reservation;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aloa.restaurant.Restaurant;
import com.aloa.restaurant.RestaurantDTO;
import com.aloa.restaurant.RestaurantService;
import com.aloa.review.Reviewboard;

@Controller
public class ReservationController {
	
	@Autowired
	private RestaurantService service;
	
	
	@Autowired
	ReservationDAO reservationDAO;

	@RequestMapping(value="/reservation",method=RequestMethod.GET)
	public String reserveView( int resno, Model model ){
	
		Restaurant restaurant = service.findOne(resno);
	
		
		RestaurantDTO resDTO = new RestaurantDTO();
		
		resDTO.setRestaurant(restaurant);
		
		model.addAttribute("resDTO",resDTO);
		
		return "reserve/reservation";
	}
	//addReservation() 변경함 - by 고현규
	@RequestMapping(value="/restaurantReserve", method=RequestMethod.POST)
	public String addReservation(@RequestBody ReservationDTO dto){
		
		reservationDAO.insertResevation(dto);

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
	
	@RequestMapping(value="/reservationView", method=RequestMethod.GET)
	public String reservationView(Model model){

		return "member/template/reservationView";
	}
	
	
}
