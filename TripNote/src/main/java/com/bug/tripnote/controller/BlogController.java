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
import com.bug.tripnote.model.MemberVO;

import com.bug.tripnote.service.BlogService;


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
	public String myblog(@RequestParam("user_no") String user_no, Model model) {
		logger.info(user_no);
		MemberVO mvo = null;
		mvo = blogService.blogYNSelect(user_no);
		
		if(mvo == null) {
			// 없으면 블로그 생성
			logger.info("블로그 없음"); 
			blogService.blogYNInsert(user_no);
		} else {
			logger.info("블로그 있음");
		}

		BlogVO bvo = blogService.blogInfoSelect(user_no);
		
		model.addAttribute("blogVO", bvo);
		return "myblog/3_My_Main";
	}
}
