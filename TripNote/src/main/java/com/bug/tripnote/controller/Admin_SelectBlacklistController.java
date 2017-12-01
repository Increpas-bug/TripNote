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

import com.bug.tripnote.model.BlacklistVO;
import com.bug.tripnote.service.AdminService;;

//@Controller
//public class Admin_SelectBlacklistController {
//	@Autowired
//	private AdminService adminservice;
//	
//	Logger logger = LoggerFactory.getLogger(getClass());
//
//	@RequestMapping(value = "/admin_SelectBlacklist.do", method = RequestMethod.GET)
//	public String handleRequest(Model model ) { 
//		MemberVO vo = adminservice.banMember();
//		model.addAttribute("admin_SelectBlacklist", vo);
//		
//		// null  view 값 지정 요망
//		return "admin/admin_Blacklist";		
//		
//	}
//	
//}

@Controller
// @RequestMapping("/admin_SelectBlacklist.do")
@RequestMapping("/admin_Blacklist.do")
public class Admin_SelectBlacklistController {
	@Autowired
	private AdminService adminservice;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping(method = RequestMethod.GET)
	public String handleRequest(Model model ) { 
		List<BlacklistVO> list = adminservice.selectBlacklist();
		model.addAttribute("admin_selectBlacklist", list);
		
		// null  view 값 지정 요망
		return "admin/admin_Blacklist";		
		
	}
	
}