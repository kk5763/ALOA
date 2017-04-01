package com.aloa.restaurant;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aloa.review.Imageboard;
import com.aloa.review.ReviewService;
import com.aloa.review.Reviewboard;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService service;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/detailView",method=RequestMethod.GET)
	public String detailView(@RequestParam int resno,Model model){
		
		Restaurant restaurant = service.findOne(resno);
		List<Reviewboard> reviewList = reviewService.reviewList(resno);
		List<Imageboard> imageList = reviewService.imagelist(resno);
		
		RestaurantDTO resDTO = new RestaurantDTO();
		resDTO.setRestaurant(restaurant);
		resDTO.setReviewList(reviewList);
		resDTO.setImageList(imageList);
		
		model.addAttribute("resDTO",resDTO);

		return "detail/detailView";
	}
	

	@RequestMapping(value="/detailViewImage",method=RequestMethod.GET)
	public String detailViewImage(Model model ){
		
		return "detail/detailViewImage";
	}
	


}
