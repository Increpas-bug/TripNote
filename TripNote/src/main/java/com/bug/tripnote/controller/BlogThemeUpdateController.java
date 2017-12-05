package com.bug.tripnote.controller;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.bug.tripnote.model.BlogVO;
import com.bug.tripnote.service.BlogService;

@Controller
@SessionAttributes("blogVO")
public class BlogThemeUpdateController {
	@Autowired
	private BlogService blogService;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value = "/blog_theme.do", method = RequestMethod.GET)
	public String UpdateForm (@RequestParam String user_no, Model model) {
		BlogVO bvo = blogService.blogInfoSelect(user_no);
		model.addAttribute("blogVO", bvo);
		return "myblog/3_blogtheme";
	}
	
	@RequestMapping(value = "/profile_photo_update.do", method = RequestMethod.POST)
	public String Update (@ModelAttribute BlogVO bvo, SessionStatus status) {
		
		try {
			MultipartFile mfile = bvo.getMfile();
			System.out.println("mfile=" + mfile);
			
			bvo.setBlog_profile_photo(mfile.getOriginalFilename());
			logger.info(">>>>> 파일명을 VO에  설정");
			
			blogService.profilePhotoUpdate(bvo);
			status.setComplete();
			
			if (mfile != null && mfile.getSize() != 0) {
				String fileName = mfile.getOriginalFilename();
				String upath = "C:/upload";
				System.out.println(upath);
				File file = new File(upath + "/" + fileName);
				mfile.transferTo(file);
				System.out.println(fileName + " upath" + "에 저장");
				System.out.println("파일크기=" + mfile.getSize() + "바이트");
			}
			return "redirect:2_My_Main.do?user_no=1";
		} 
		catch (Exception e) {
			return "redirect:3_My_Main.do?user_no=1";
		}
	}
		
	@RequestMapping(value = "/title_photo_update.do", method = RequestMethod.POST)
	public String titleUpdate (@ModelAttribute BlogVO bvo, SessionStatus status) {
		
		try {
			MultipartFile mfile = bvo.getMfile();
			System.out.println("mfile=" + mfile);
			
			bvo.setBlog_title_photo(mfile.getOriginalFilename());
			logger.info(">>>>> 파일명을 VO에  설정");

			blogService.titlePhotoUpdate(bvo);
			status.setComplete();
			
			if (mfile != null && mfile.getSize() != 0) {
				String fileName = mfile.getOriginalFilename();
				String upath = "C:/upload";
				System.out.println(upath);
				File file = new File(upath + "/" + fileName);
				mfile.transferTo(file);
				System.out.println(fileName + " upath" + "에 저장");
				System.out.println("파일크기=" + mfile.getSize() + "바이트");
			}
			return "redirect:3_My_Main.do?user_no=1";
		} 
		catch (Exception e) {
			return "redirect:3_My_Main.do?user_no=1";
		}
	}
	@RequestMapping(value = "/blog_title_write.do", method = RequestMethod.POST)
	public String blogTitleUpdate(BlogVO bvo) {
		blogService.blogTitleUpdate(bvo);
		;
		return "redirect:3_My_Main.do?user_no=1";
	}	
	
	

}
