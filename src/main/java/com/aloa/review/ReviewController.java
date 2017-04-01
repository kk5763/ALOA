package com.aloa.review;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	
	@RequestMapping(value = "/reviewWriteForm", method = RequestMethod.GET)
	public String reviewWriteForm(@RequestParam int resno,Model model) {
		model.addAttribute("resno",resno);
		return "review/reviewWriteForm";
	}
	
	@RequestMapping(value = "/reviewWrite", method = RequestMethod.POST)
	public String reviewWrite(int resno
							,@RequestParam String content
							,@RequestParam int grade
							,@RequestParam(required=false) String email){
		if(email!=null){
			Reviewboard dto = new Reviewboard();
			dto.setContent(content);
			dto.setEmail(email);
			dto.setGrade(grade);
			dto.setResno(resno);
				
			reviewService.reviewWrite(dto);
		}
		
		
		
		return "redirect:/";
	}
}