package com.bug.tripnote.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bug.tripnote.model.BlogVO;
import com.bug.tripnote.model.TestVO;
import com.bug.tripnote.service.BlogService;
import com.bug.tripnote.service.TestService;

/**
 * 
 * @author 이진수
 *
 */

@Controller
@RequestMapping("/3_My_Main.do")
public class BlogController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String myblog(Model model) {
		return "myblog/3_My_Main";
	}
	
	/* 작업중...
	 * @RequestMapping(method = RequestMethod.GET)
	public String myblog(@RequestParam("blog_no") String blog_no,Model model) {
		logger.info("아 멘붕");
		BlogVO bvo = blogService.blogInfoSelect(blog_no);
		model.addAttribute("blogVO", bvo);
		return "myblog";
	}*/
}
