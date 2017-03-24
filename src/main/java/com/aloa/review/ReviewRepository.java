package com.aloa.review;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<Reviewboard,Integer>{
	
	
	List<Reviewboard> findByResnoLessThanOrderByResnoDesc(int resno);
}
