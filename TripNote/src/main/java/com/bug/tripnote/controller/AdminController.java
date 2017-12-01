// 뷰 <- 컨트롤러 -> 서비스 -> DAO 

package com.bug.tripnote.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bug.tripnote.service.AdminService;;

@Controller
@RequestMapping("/admin_Main.do")
public class AdminController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
		
	@Autowired
	private AdminService adminservice;
		
	@RequestMapping(method = RequestMethod.GET)
	public String handleRequest(Model model ) {	
		
		// null  view 값 지정 요망
		return "admin/admin_Main";		
		
	}
	
}