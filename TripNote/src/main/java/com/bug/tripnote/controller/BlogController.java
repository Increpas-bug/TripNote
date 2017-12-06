package com.bug.tripnote.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.service.BlogService;

import sun.print.resources.serviceui;


/**
 * 
 * @author 이진수
 *
 */

@Controller
@RequestMapping("/2_My_Main.do")
public class BlogController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String myblog(@RequestParam("user_no") String user_no, HttpSession session, Model model) {
		logger.info(user_no);
		MemberVO mvo = (MemberVO) session.getAttribute("member");
	
		String my_user_no = mvo.getUser_no();
		logger.info(my_user_no + "!!!!!!!!!!!!!!!");
		// 게시글 리스트
		List<PostingVO> postingList = blogService.selectMyPosting(my_user_no);
		
		mvo = blogService.blogYNSelect(user_no);
		
		if(mvo == null) {
			// 없으면 블로그 생성
			logger.info("블로그 없음"); 
			blogService.blogYNInsert(user_no);
			mvo.setUser_blogyn("Y");
			session.setAttribute("member", mvo);
		} else {
			logger.info("블로그 있음");
		}
		
		BlogVO bvo = blogService.blogInfoSelect(user_no);
		
		
		
		model.addAttribute("blogVO", bvo);
		model.addAttribute("postingList", postingList);
		
		return "myblog/2_My_Main";
	}
}
