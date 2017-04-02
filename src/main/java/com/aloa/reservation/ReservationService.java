package com.aloa.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {
	
	@Autowired
	ReservationRepository reservationRepository;
	
	public Reservation cancleReservation(Long id) {
		Reservation reservation = reservationRepository.findOne(id);
		
		reservation.setResercancle(1);
		
		reservationRepository.save(reservation);
		return reservationRepository.save(reservation);
	}

}
