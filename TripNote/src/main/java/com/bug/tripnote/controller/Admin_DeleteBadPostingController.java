//// 뷰 <- 컨트롤러 -> 서비스 -> DAO 
//
//package com.bug.tripnote.controller;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.bug.tripnote.service.AdminService;;
//
//@Controller
//public class Admin_DeleteBadPostingController {
//	
//	@Autowired
//	private AdminService adminservice;
//	
//	Logger logger = LoggerFactory.getLogger(getClass());
//
//	@RequestMapping(value = "/admin_DeletePosting.do", method = RequestMethod.GET)
////	public String handleRequest(Model model, int posting_no) {
//	public String handleRequest(@RequestParam int posting_no) {
//		
//		//PostingVO vo = adminservice.deleteBadPosting();
//		// List<PostingVO> list = adminservice.deleteBadPosting(posting_no);
//	
//		//model.addAttribute("admin_DeletePosting", list);
//		// adminservice.deleteBadPosting(posting_no);
//		System.out.println("글번호 : " + posting_no);
//		
//		adminservice.deleteBadPosting(posting_no);
//		
//		// null  view 값 지정 요망
//		return "redirect:admin_BadPostingList.do?pn=1";	
//		
//	}
//	
//}

// 뷰 <- 컨트롤러 -> 서비스 -> DAO 

package com.bug.tripnote.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bug.tripnote.service.AdminService;;

@Controller
public class Admin_DeleteBadPostingController {
	
	@Autowired
	private AdminService adminservice;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping(value = "/admin_DeletePosting.do", method = RequestMethod.GET)
	public String handleRequest(@RequestParam int posting_no) {		
		System.out.println("글번호 : " + posting_no);		
		adminservice.deleteBadPosting(posting_no);		
		
		return "redirect:admin_BadPostingList.do?pn=1";	
		
	}
	
}

