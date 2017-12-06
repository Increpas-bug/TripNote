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

import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.service.BlogService;

@Controller
@RequestMapping("/keepingPage.do")
public class BlogKeepingController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String blogKeeping(@RequestParam("user_no") String user_no, HttpSession session, Model model) {
		logger.info(user_no);
		MemberVO mvo = (MemberVO) session.getAttribute("member");
		
		String login_user_no = mvo.getUser_no();
		logger.info(login_user_no + "!!!!!!!!!!!!!!!");
		//keeping list
		List<PostingVO> keepingList = blogService.selectMyKeeping(login_user_no);
		
		model.addAttribute("keepingList", keepingList);
	
		return "myblog/5_keepingPage";
	}
}
