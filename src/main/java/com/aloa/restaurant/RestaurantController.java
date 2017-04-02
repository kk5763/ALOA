package com.aloa.restaurant;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aloa.account.Account;
import com.aloa.account.AccountRepository;
import com.aloa.review.Imageboard;
import com.aloa.review.ReviewService;
import com.aloa.review.Reviewboard;
import com.aloa.review.ReviewbordDTO;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService service;
	
	@Autowired
	private ReviewService reviewService;
	

	@Autowired
	private  AccountRepository accountRepository;


	@RequestMapping(value="/detailView",method=RequestMethod.GET)
	public String detailView(@RequestParam int resno,Model model,Principal principal){
	Restaurant restaurant = service.findOne(resno);
		List<Reviewboard> reviewList = reviewService.reviewList(resno);
		List<Imageboard> imageList = reviewService.imagelist(resno);
		List<Account> accountList = new ArrayList<Account>();
		
		// 리뷰 개수 & 평점
		int grade_5 = 0;
		int grade_3 = 0;
		int grade_1 = 0;
		
		int sum = 0;
		for(int i = 0; i < reviewList.size(); i++) {
			if(reviewList.get(i).getGrade() == 5) {
				grade_5++;
			} else if(reviewList.get(i).getGrade() == 3) {
				grade_3++;
			} else if(reviewList.get(i).getGrade() == 1) {
				grade_1++;
			}
			
			sum += reviewList.get(i).getGrade();
			
			//회원 정보 받아오기
			Account account = accountRepository.findByEmail(reviewList.get(i).getEmail());
			accountList.add(account);
		}
		double avg = 0;
		if(sum == 0)
			avg = 0;
		else 
			avg = (double)sum / reviewList.size();
		
		List<Integer> reviewCount = new ArrayList<Integer>();
		reviewCount.add(grade_5);
		reviewCount.add(grade_3);
		reviewCount.add(grade_1);
		
		RestaurantDTO resDTO = new RestaurantDTO();
		resDTO.setRestaurant(restaurant);
		resDTO.setImageList(imageList);
		
		ReviewbordDTO revDTO = new ReviewbordDTO();
		revDTO.setAccountList(accountList);
		revDTO.setReviewBoardList(reviewList);
		
		model.addAttribute("resDTO", resDTO);
		model.addAttribute("revDTO", revDTO);
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("avg", avg);

		return "detail/detailView";
	}
	
	
	@RequestMapping(value="/detailViewImage",method=RequestMethod.GET)
	public String detailViewImage(Model model ){
		
		return "detail/detailViewImage";
	}
	@RequestMapping(value="/NewFile",method=RequestMethod.GET)
	public String NewFile(Model model ){
		
		return "search/NewFile";
	}


}
