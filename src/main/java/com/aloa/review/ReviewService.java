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
	private ImageRepository iamgeRepository;
	
	public List<ReviewBoardDTO> reviewList(int resNo){
		
		List<ReviewBoard> list = 
				repository.findByResNoLessThanOrderByResNoDesc(resNo);
		
		List<ReviewBoardDTO> reviewList = new ArrayList<ReviewBoardDTO>();
		
		for(int i=0;i<list.size();i++){
			
			List<ImageBoard> imageList = 
					iamgeRepository.findByReviewNoLessThanOrderByCreateDateDesc(
							list.get(i).getReviewNo());
			
			ReviewBoardDTO reviewBoardDTO = new ReviewBoardDTO();
			reviewBoardDTO.setReviewBoard(list.get(i));
			reviewBoardDTO.setImageBoard(imageList);
			
			reviewList.add(reviewBoardDTO);
		}
		
		
		return reviewList;
	}
	
}
