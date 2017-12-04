//// 뷰 <- 컨트롤러 -> 서비스 -> DAO 
//
//package com.bug.tripnote.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.bug.tripnote.model.MemberVO;
//import com.bug.tripnote.service.AdminService;;
//
//@Controller
//public class Admin_BanMemberController {
//	@Autowired
//	private AdminService adminservice;
//
//	@RequestMapping("/admin_banMember.do")
//	public String handleRequest(Model model ) { 
//		//MemberVO vo = adminservice.banMember();
//		List<MemberVO> list = adminservice.banMember();
//		
//		// model.addAttribute("admin_banMember", vo);
//		model.addAttribute("admin_banMember", list);
//		
//		// null  view 값 지정 요망
//		return "admin/admin_Main";	
//		
//	}
//	
//}

//// 뷰 <- 컨트롤러 -> 서비스 -> DAO 
//
//package com.bug.tripnote.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.bug.tripnote.service.AdminService;;
//
//@Controller
//public class Admin_BanMemberController {
//	@Autowired
//	private AdminService adminservice;
//
//	@RequestMapping("/admin_banMember.do")
//	// public String handleRequest(Model model ) {
//	public String handleRequest(@RequestParam int user_no) {
////		//MemberVO vo = adminservice.banMember();
////		List<MemberVO> list = adminservice.banMember();
////		
////		// model.addAttribute("admin_banMember", vo);
////		model.addAttribute("admin_banMember", list);
//		
//		adminservice.banMember(user_no);
//		
//		// null  view 값 지정 요망
//		// return "admin/admin_Main";
//		return "redirect:admin_Blacklist.do?pn=1";	
//		
//		
//	}
//	
//}

// 뷰 <- 컨트롤러 -> 서비스 -> DAO 

package com.bug.tripnote.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bug.tripnote.service.AdminService;;

@Controller
public class Admin_BanMemberController {
	@Autowired
	private AdminService adminservice;

	@RequestMapping("/admin_banMember.do")
	public String handleRequest(@RequestParam String user_email) {
		adminservice.banMember(user_email);
		System.out.println("회원번호 : " + user_email);
		return "redirect:admin_MemberList.do?pn=1";	
		
		
	}
	
}