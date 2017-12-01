// 뷰 <- 컨트롤러 -> 서비스 -> DAO 

package com.bug.tripnote.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.service.AdminService;;

@Controller
public class Admin_DeleteBadPostingController {
	
	@Autowired
	private AdminService adminservice;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping(value = "/admin_DeletePosting.do", method = RequestMethod.GET)
	public String handleRequest(Model model, int posting_no) { 
		
		//PostingVO vo = adminservice.deleteBadPosting();
		List<PostingVO> list = adminservice.deleteBadPosting(posting_no);
		model.addAttribute("admin_DeletePosting", list);
		
		// null  view 값 지정 요망
		return "redirect:admin/admin_BadPostList.do?pn=1";	
		
	}
	
}