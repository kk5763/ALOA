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
	
	public List<ReviewBoardDTO> reviewList(int resNo){
		
		List<Reviewboard> list = 
				repository.findByResnoLessThanOrderByResnoDesc(resNo);
		
		List<ReviewBoardDTO> reviewList = new ArrayList<ReviewBoardDTO>();
		
		for(int i=0;i<list.size();i++){
			
			List<Imageboard> imageList = 
					iamgeRepository.findByReviewno(
							list.get(i).getReviewno());
			
			ReviewBoardDTO reviewBoardDTO = new ReviewBoardDTO();
			reviewBoardDTO.setReviewboard(list.get(i));
			reviewBoardDTO.setImageboard(imageList);
			
			reviewList.add(reviewBoardDTO);
		}
		
		
		return reviewList;
	}
	
	public void reviewWrite(Reviewboard dto){
		reviewDAO.reviewInsert(dto);
	}
	
}
