package com.aloa.review;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<Reviewboard,Integer>{
	
	Reviewboard findByReviewno(int reviewno);
	List<Reviewboard> findByResnoLessThanOrderByResnoDesc(int resno);
}
