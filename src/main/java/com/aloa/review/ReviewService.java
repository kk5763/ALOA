package com.aloa.review;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService {
	
	
	@Autowired
	private ReviewRepository repository;
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Autowired
	private ImageRepository iamgeRepository;
	
	public List<Reviewboard> reviewList(int resno){
		
		List<Reviewboard> list = 
				reviewDAO.reviewlist(resno);		
		
		
		
		
		return list;
	}
	
	public void reviewWrite(Reviewboard dto){
		reviewDAO.reviewInsert(dto);
	}
	
}
