package com.aloa.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReservationRestController {
	
	@Autowired
	ReservationRepository reservationRepository;
	
	@Autowired
	ReservationService reservationService;
	
	@RequestMapping(value="/reservation/khk", method=RequestMethod.POST)
	public ResponseEntity saveReservation(@RequestBody Reservation reservation){
		
		reservationRepository.save(reservation);		
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	@RequestMapping(value="/reservation/{id}", method=RequestMethod.GET)
	public ResponseEntity getReservations(@PathVariable Long id){
		List<Reservation> list = reservationRepository.findByUserid(id);
		if(list.size()==0){
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	
	@RequestMapping(value="/reservationConfirm/{id}", method=RequestMethod.GET)
	public ResponseEntity getReservation(@PathVariable Long id){
		
		Reservation reservation = reservationRepository.findOne(id);
		
		
		return new ResponseEntity<>(reservation, HttpStatus.OK);
	}
	
	@RequestMapping(value="/reservationCancle/{id}", method=RequestMethod.PATCH)
	public ResponseEntity cancleReservation(@PathVariable Long id){
		
		
		//TODO 예약 취소 서버사이드벨리데이션
		Reservation reservation = reservationService.cancleReservation(id);
		
		return new ResponseEntity<>(reservation, HttpStatus.OK);
	}
}
