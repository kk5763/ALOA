package com.aloa.restaurant;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	@RequestMapping(value="/detailView",method=RequestMethod.POST)
	public String detailView(int resno,Model model){
=======
	
	
	
	@RequestMapping(value="/detailView/{resno}")
	public String detailView(@PathVariable int resno,Model model){
>>>>>>> d09220f79cf5c2c83de2d047290c3bcf074023bd
		Restaurant restaurant = service.findOne(resno);
		List<Reviewboard> reviewlist = 
				reviewService.reviewList(resno);
		
		RestaurantDTO resDTO = new RestaurantDTO();
		resDTO.setReviewlist(reviewlist);
		resDTO.setRestaurant(restaurant);
		
<<<<<<< HEAD
		model.addAttribute("resDTO",resDTO);*/
		
=======
		
		model.addAttribute("resDTO",resDTO);
>>>>>>> d09220f79cf5c2c83de2d047290c3bcf074023bd
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
