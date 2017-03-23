package com.aloa.review;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<ImageBoard,Integer>{
	List<ImageBoard> findByReviewno(int reviewno);
}
