package com.aloa.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aloa.restaurant.Restaurant;
import com.aloa.restaurant.RestaurantDTO;
import com.aloa.restaurant.RestaurantService;

@Controller
public class ReservationController {
	
	@Autowired
	private RestaurantService service;
	
	@Autowired
	ReservationRepository reservationRepository;
	
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
	
	@RequestMapping(value="/restaurantReserve", method=RequestMethod.POST)
	public ResponseEntity addReservation(@RequestBody Reservation dto){
		
		reservationRepository.save(dto);
		
		return new ResponseEntity<>(HttpStatus.OK);
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
	
	@RequestMapping(value="/kk")
	public String kkreserve(){
		return "reserve/kkreserve";
	}
}
