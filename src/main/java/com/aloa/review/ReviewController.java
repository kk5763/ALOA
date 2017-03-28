package com.aloa.review;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String reviewWrite(int resno,@RequestParam MultipartFile[] imagelist
							,@RequestParam String content
							,@RequestParam int grade
							,@RequestParam String email){
		String filePath = "C:/Project/ALOA/src/main/webapp/WEB-INF/views/storage/";
		
		System.out.println(imagelist.length);
		for(int i=0;i<imagelist.length;i++){
			String uuid = UUID.randomUUID().toString();
			String fileName = imagelist[i].getOriginalFilename();
			String realName = uuid+"."+fileName;
			
			System.out.println(i);
			try {
				System.out.println(i);
				File file = new File(filePath,realName);
				FileCopyUtils.copy(imagelist[i].getInputStream(), new FileOutputStream(file));
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			Reviewboard dto = new Reviewboard();
			dto.setContent(content);
			dto.setEmail(email);
			dto.setGrade(grade);
			dto.setImage(realName);
			dto.setResno(resno);
			
			reviewService.reviewWrite(dto);
			
		}
		
		
		return "redirect:/detailView";
	}
}