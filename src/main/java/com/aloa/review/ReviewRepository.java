package com.aloa.review;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<ReviewBoard,Long>{
	
	
	List<ReviewBoard> findByResNameLessThanOrderByResNameDesc(String resName);
}
