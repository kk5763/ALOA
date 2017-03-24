package com.aloa.restaurant;

import java.util.List;

import javax.validation.Valid;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aloa.review.ReviewBoardDTO;
import com.aloa.review.ReviewService;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService service;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ModelMapper modelmapper;
	
	@Autowired
	private RestaurantRepository repository;
	
	
	
	@RequestMapping(value="/detailView",method=RequestMethod.GET)
	public String detailView(int resno,Model model){
		
		Restaurant restaurant = service.findOne(resno);
		List<ReviewBoardDTO> reviewlist = 
				reviewService.reviewList(resno);
		
		RestaurantDTO resDTO = new RestaurantDTO();
		resDTO.setReviewlist(reviewlist);
		resDTO.setRestaurant(restaurant);
		
		model.addAttribute("resDTO",resDTO);
		
		return "detail/detailView";
	}
	

	@RequestMapping(value="/detailViewImage",method=RequestMethod.GET)
	public String detailViewImage(Model model ){
		
		
		return "detail/detailViewImage";
	}
	


	@RequestMapping(value="/reviewWrite", method=RequestMethod.GET)
	public String reviewWrite() {
		
		return "review/reviewWrite";
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
