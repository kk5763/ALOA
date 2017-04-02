package com.aloa.reservation;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation, Long>{

	List<Reservation> findByUserid(Long id);

}
