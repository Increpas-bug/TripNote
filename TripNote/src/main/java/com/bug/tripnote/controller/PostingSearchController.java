package com.bug.tripnote.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.service.PostingService;

@Controller
@RequestMapping("/posting_Search.do")
public class PostingSearchController {
	
	@Autowired
	private PostingService service;
	 
	
	// 포스팅 목록 검색
	// get
	@RequestMapping(method = RequestMethod.GET)
	public String getSearchForm(){
		
		return "posting/PostingSearch";
	}
	
	
	// post
	@RequestMapping(method = RequestMethod.POST)
	public String getPostingList(HttpSession session, @RequestParam("tag")String tag, Model model){
		
		MemberVO mVo = (MemberVO)session.getAttribute("member");
		String login_user_no = mVo.getUser_no();
		
		// null값 체크 
		if(tag == null){
			tag = "";
		}

		System.out.println("tag : " + tag);		
		// 값을 저장할 리스트에 태그 값 전송 
		List<PostingVO> list = service.getPostingList(tag, login_user_no);

		
		
		System.out.println(list);
		
		// 모델값 저장
		
		model.addAttribute("postingList", list);
		
		System.out.println("서비스로 넘어갔는가띠용?");
		
		return "posting/favoriteMainView";
	}

}
