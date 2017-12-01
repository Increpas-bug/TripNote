// 뷰 <- 컨트롤러 -> 서비스 -> DAO 

package com.bug.tripnote.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.service.AdminService;;

@Controller
public class Admin_BanMemberController {
	@Autowired
	private AdminService adminservice;

	@RequestMapping("/admin_banMember.do")
	public String handleRequest(Model model ) { 
		//MemberVO vo = adminservice.banMember();
		List<MemberVO> list = adminservice.banMember();
		
		// model.addAttribute("admin_banMember", vo);
		model.addAttribute("admin_banMember", list);
		
		// null  view 값 지정 요망
		return "admin/admin_Main";	
		
	}
	
}