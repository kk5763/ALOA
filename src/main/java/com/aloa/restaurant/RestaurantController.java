package com.aloa.restaurant;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aloa.review.ReviewService;
import com.aloa.review.Reviewboard;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService service;
	
	@Autowired
	private ReviewService reviewService;
	
	
	
	
<<<<<<< HEAD
	@RequestMapping(value="/detailView",method=RequestMethod.GET)
	public String detailView(Model model){
		
		/*Restaurant restaurant = service.findOne(resno);
		List<ReviewBoardDTO> reviewlist = 
=======
	@RequestMapping(value="/detailView",method=RequestMethod.POST)
	public String detailView(int resno,Model model){
		Restaurant restaurant = service.findOne(resno);
		List<Reviewboard> reviewlist = 
>>>>>>> 33afe946e4c2a77632e99c94d9ccc520243f9cdf
				reviewService.reviewList(resno);
		
		RestaurantDTO resDTO = new RestaurantDTO();
		resDTO.setReviewlist(reviewlist);
		resDTO.setRestaurant(restaurant);
		
<<<<<<< HEAD
		model.addAttribute("resDTO",resDTO);*/
		
=======
		model.addAttribute("resDTO",resDTO);
>>>>>>> 33afe946e4c2a77632e99c94d9ccc520243f9cdf
		return "detail/detailView";
	}
	

	@RequestMapping(value="/detailViewImage",method=RequestMethod.GET)
	public String detailViewImage(Model model ){
		
		
		return "detail/detailViewImage";
	}
	


	
	@RequestMapping(value="/reportRes", method=RequestMethod.GET)
	public String reportRes() {
		return "detail/reportRes";
	}
	
	@RequestMapping(value="/reportRev", method=RequestMethod.GET)
	public String reportRev() {
		return "detail/reportRev";
	}
}
