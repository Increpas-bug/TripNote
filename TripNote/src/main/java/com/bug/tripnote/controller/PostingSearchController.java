package com.bug.tripnote.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.service.PostingService;

@Controller
@RequestMapping("/posting_Search.do")
public class PostingSearchController {
	
	@Autowired
	private PostingService service;
	
	// get
	@RequestMapping(method = RequestMethod.GET)
	public String getSearchForm(){
		
		return "posting/PostingSearch";
	}
	
	// 포스팅 목록 검색
	// post
	@RequestMapping(method = RequestMethod.POST)
	public String getPostingList(@RequestParam("tag")String tag, Model model){
		
		// null값 체크 
		if(tag == null){
			tag = "";
		}
		
		// 값을 저장할 리스트에 태그 값 전송 
		List<PostingVO> list = service.getPostingList(tag);

		System.out.println(list);
		
		// 모델값 저장
		
		model.addAttribute("postingList", list);
		
		System.out.println("서비스로 넘어갔는가띠용?");
		
		return "posting/favoriteMainView";
	}

}
