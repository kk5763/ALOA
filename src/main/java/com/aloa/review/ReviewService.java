package com.aloa.review;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aloa.review.Imageboard;

@Service
public class ReviewService {
	
	
	@Autowired
	private ReviewRepository repository;
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	
	public List<Reviewboard> reviewList(int resno){
		
		List<Reviewboard> list = 
				reviewDAO.reviewlist(resno);		
		
		return list;
	}
	
	public void reviewWrite(Reviewboard dto){
		reviewDAO.reviewInsert(dto);
	}

	public List<Imageboard> imagelist(int resno) {
		
		List<Imageboard> list = reviewDAO.imagelist(resno);
		
		return list;
	}
	
}
