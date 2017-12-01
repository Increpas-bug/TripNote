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

import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.service.AdminService;;
@Controller
public class Admin_SelectBadPostingController {
	@Autowired
	private AdminService adminservice;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	// @RequestMapping(value = "/admin_selectBadPosting.do", method = RequestMethod.GET)
	@RequestMapping(value = "/admin_BadPostingList.do", method = RequestMethod.GET)
	public String handleRequest(Model model ) { 
		List<PostingVO> list = adminservice.selectBadPosting();
		model.addAttribute("admin_selectBadPosting", list);
		
		// null  view 값 지정 요망
		return "admin/admin_BadPostingList";	
		
	}
	
}