package com.bug.tripnote.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.bug.tripnote.model.BlogVO;
import com.bug.tripnote.service.BlogService;

@Controller
@RequestMapping("/blog_theme_update.do")
public class BlogThemeController {
	
	@Autowired
	private BlogService blogService;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	//테마수정폼으로 이동합니다.
	@RequestMapping(method = RequestMethod.GET)
	public String themeForm(Model model) {
		return "blogtheme";
	}
	
	//프로필 사진 업로드
	@RequestMapping(method = RequestMethod.POST)
	public String profilePhotoUpdate(HttpServletRequest request, @Valid @ModelAttribute("blog") BlogVO bvo
			,Errors errors, Model model) {
		
		try {
			//파일 업로드
			MultipartFile mfile = bvo.getMfile();
			System.out.println("mfile=" + mfile);
			
			bvo.setBlog_profile_photo(mfile.getOriginalFilename());
			logger.info(">>>>> 파일명을 VO에  설정");
			
			
			int rownum = blogService.profilePhotoInsert(bvo);
			if (rownum == 1) {
				logger.info("success");
			}
			logger.info(">>>>> Service 메소드 호출");
			
			if (mfile != null && mfile.getSize() != 0) {
				String fileName = mfile.getOriginalFilename();
				String upath = "C:/images";
				System.out.println(upath);
				File file = new File(upath + "/" + fileName);
				mfile.transferTo(file);
				System.out.println(fileName + " upath" + "에 저장");
				System.out.println("파일크기=" + mfile.getSize() + "바이트");
			}
			return "redirect:myblog.do";
		} 
		catch (Exception e) {
			return "redirect:myblog.do";
		}
	}
	//타이틀사진 추가
}
