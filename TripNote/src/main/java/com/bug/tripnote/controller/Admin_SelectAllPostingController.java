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
public class Admin_SelectAllPostingController {
	
	@Autowired
	private AdminService adminservice;

	// @RequestMapping("/admin_selectAllPosting.do")
	
	// 추가
	Logger logger = LoggerFactory.getLogger(getClass());
	
	// 수정 뷰랑 동일시 할 밸류값 지정 
	
	@RequestMapping(value = "/admin_PostingList.do", method = RequestMethod.GET)
	
	public String handleRequest(Model model ) { 
//		PostingVO vo = adminservice.selectAllPosting();
//		model.addAttribute("admin_selectAllPosting", vo);
		List<PostingVO> list = adminservice.selectAllPosting();
		model.addAttribute("admin_selectAllPosting", list);
		
		// 추가
		logger.info(list.toString());
		
		// null  view 값 지정 요망
		return "admin/admin_PostingList";	
		
	}
	
}