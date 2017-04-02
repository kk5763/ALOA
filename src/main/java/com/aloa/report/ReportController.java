package com.aloa.report;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aloa.restaurant.Restaurant;
import com.aloa.restaurant.RestaurantRepository;

@Controller
public class ReportController {
	
	
	@Autowired
	private RestaurantRepository resRepository;
	
	@Autowired
	private ReportDAO reportDAO;
	
	@RequestMapping(value="/reportResForm",method=RequestMethod.GET)
	public String reportResForm(Model model
								,@RequestParam int resno){
		
		model.addAttribute("resno",resno);

		return "detail/reportRes";
	}
	
	
	@RequestMapping(value="/reportRevForm",method=RequestMethod.GET)
	public String reportRevForm(Model model
								,@RequestParam int resno
								,@RequestParam int reviewno){
		
		model.addAttribute("reviewno",reviewno);
		model.addAttribute("resno",resno);
		
		return "detail/reportRev";
	}
	
	@RequestMapping(value="/reportRes",method=RequestMethod.POST)
	public String reportRes(Model model
						,int resno
						,String email
						,int report
						,String content){
		
		//신고가맹점주(피고자)
		Restaurant restaurant = resRepository.findByResno(resno); 
		String deemail = restaurant.getBossemail();
		String reemail = email;
		String reportname = null;
		
		if(report==1){ 
			reportname="존재하지 않는 맛집입니다";
		}else if(report==2){
			reportname="망고플레이트에 게시되기 적절하지 않습니다";
		}else if(report==3){
			reportname="부적절한 사진이 포함되어있습니다";
		}else if(report==4){
			reportname="기타";
		}
		
		if(content.equals("")){
			content="해당 사항 없음";
		}
		
		System.out.println(reemail+"//"+deemail+"//"+resno);
		Reportres reportres = new Reportres();
		reportres.setDeemail(deemail);
		reportres.setReemail(reemail);
		reportres.setReportcontent(content);
		reportres.setReportname(reportname);
		reportres.setResno(resno);
		
		reportDAO.reportResInsert(reportres);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/reportRev",method=RequestMethod.GET)
	public String reportRev(Model model
						,int resno
						,String email
						,int report
						,int reviewno){
		
		
		
		return "redirect:/";
	}
	
	
	
	
	
	
}
