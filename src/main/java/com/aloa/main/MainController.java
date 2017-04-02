package com.aloa.main;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.aloa.restaurant.Restaurant;
import com.aloa.restaurant.RestaurantDTO;
import com.aloa.restaurant.RestaurantService;
import com.aloa.review.Imageboard;
import com.aloa.review.ReviewService;
import com.aloa.review.Reviewboard;
import com.aloa.service.MemberService;

@SessionAttributes("listBoard")
@Controller
public class MainController {
	@Autowired
	MemberService memberService;

	@Autowired
	RestaurantService resService;

	@Autowired
	ReviewService revService;

	private Facebook facebook; // 페이스북 api 객체
	private ConnectionRepository cr; // 페이스북 연결 정보

	public MainController(Facebook facebook, ConnectionRepository cr) {
		this.facebook = facebook;
		this.cr = cr;
	}

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(Model model, HttpSession session){
		
		/*if(cr.findPrimaryConnection(Facebook.class)!=null){
			String[] fields={"id","name","birthday","email","gender"};
			User user = facebook.fetchObject("me", User.class,fields);  //me 는 로그인한 사용자의 정보. me/friends 하면 친구정보가 나옴
			String name = user.getName();
			String id = user.getId();
			String birthday = user.getBirthday();
			String email = user.getEmail();
			String gender = user.getGender();
	  		
			
			model.addAttribute("name", name);
			model.addAttribute("id", id);
			model.addAttribute("birthday", birthday);
			model.addAttribute("email", email);
			model.addAttribute("gender", gender);
			
			
			session.setAttribute("username", name);
		}*/
		

		List<Restaurant> restaurantlist = resService.findList();
		List<RestaurantDTO> reslist = new ArrayList<RestaurantDTO>();

		for (int i = 0; i < restaurantlist.size(); i++) {
			// 맛집의 이미지 가져오기
			List<Imageboard> imagelist = revService.imagelist(restaurantlist.get(i).getResno());

			// 레스토랑DTO에 넣기
			RestaurantDTO res = new RestaurantDTO();

			res.setImagelist(imagelist);
			res.setRestaurant(restaurantlist.get(i));

			reslist.add(res);
		}
		model.addAttribute("reslist",reslist);
		
		return "main/home";
	}

	@RequestMapping(value = "/searchList", method = RequestMethod.GET)
	public String searchList(@RequestParam String searchName, Model model) {

		// 식당명에 검색어가 포함된 식당들의 정보를 List로 가져옴
		List<Restaurant> resSearchList = resService.findSearchList(searchName);
		// 식당의 정보와 리뷰 이미지를 세트로 묶을 List 생성
		List<RestaurantDTO> resList = new ArrayList<RestaurantDTO>();
		
		for (int i = 0; i < resSearchList.size(); i++) { // 가져온 식당의 수 만큼 반복
			// 가져온 식당의 번호를 이용해 모든 이미지를 가져옴
			List<Imageboard> image = revService.imagelist(resSearchList.get(i).getResno());
			// 가져온 식당의 번호를 이용해 모든 리뷰를 가져옴
			List<Reviewboard> review = revService.reviewList(resSearchList.get(i).getResno());
			
			// 리뷰 개수
			List<Integer> resReviewCount = new ArrayList<Integer>();
			if(review.size() <= 0)
				resReviewCount.add(0);
			else 
				resReviewCount.add(review.size());
			
			// 식당 평점
			List<Double> resGrade = new ArrayList<Double>();
			int sum = 0;
			for(int j = 0; j < review.size(); j++) {
				sum += review.get(j).getGrade();
			}
			double avg = 0;
			if(sum == 0)
				avg = 0;
			else 
				avg = (double)sum / review.size();
			resGrade.add(avg);
			for(double data : resGrade) {
				System.out.println("avg=" + data);
			}
			
			// resList에 추가하기 위해 RestaurantDTO 타입의 객체 생성
			RestaurantDTO resDTO = new RestaurantDTO();
			// 가져온 0~n번째 식당의 정보와 이미지를 저장
			resDTO.setRestaurant(resSearchList.get(i));
			resDTO.setImagelist(image);
			resDTO.setReviewList(review);
			resDTO.setResReviewCount(resReviewCount);
			resDTO.setResGrade(resGrade);
			// 세팅된 resDTO를 resList에 추가하여 searchList.jsp로 넘김
			resList.add(resDTO);
		} // for

		model.addAttribute("searchName", searchName);
		model.addAttribute("resList", resList);
		
		return "search/searchList";
	}// searchList

	@RequestMapping(value = "/searchFilter", method = RequestMethod.GET)
	public String searchFilter() {
		
		
		return "search/searchFilter";
	}

	@RequestMapping(value = "/storejoinForm", method = RequestMethod.GET)
	public ModelAndView storejoinForm() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/storejoinForm");
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}