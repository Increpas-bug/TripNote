package com.bug.tripnote.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bug.tripnote.model.FavoriteVO;
import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.model.UserfavoriteVO;
import com.bug.tripnote.service.EnterService;

@Controller
public class MainViewController {

	@Autowired
	EnterService service;
	
	@RequestMapping(value="/2_Main2.do", method = RequestMethod.GET)
	public String mainView(String user_no, Model model){
		String viewpage = "main2/2_Main2";
		System.out.println("mainView.do>>>>>>>>>>>>>>");
		
		// 1. 신규가입자인지 기존회원인지 구분하기 위해 관심국가정보를 조회
		// ( 신규가입자라면 관심국가정보가 없다.1-1의 경우)
		List<UserfavoriteVO> favoriteNumList = service.selectFavoriteNumList(user_no);
		// 국가keyword(국가영문명) 조회
		List<FavoriteVO> favoriteWordList = service.selectFavoriteWordList(user_no);
		System.out.println("##favoriteWordList##");
		for (FavoriteVO vo : favoriteWordList) {
			System.out.println(vo.getFavorite_keyword() + "/");
		}
		
		// 1-1. 관심국가정보가 없는가? True이면 없는 경우 즉, 신규가입자. 
		// ( 신규가입자라면 관심국가선택페이지로 이동시킨다.)
		if (favoriteNumList.isEmpty()) {
			System.out.println("앗! 처음이신가요?!");
			viewpage = "main2/countryChoice";
		}
		
		// 2. 메인페이지 구성을 위해 조회수가 높은 weekly Top8 게시글을 조회
		List<PostingVO> top8List = service.selectTop8();
		
		System.out.println("## 주간 Top8 조회수 ##");
		for (PostingVO vo : top8List) {
			System.out.println(vo.getPosting_weekly_hitcount() + " / ");
		}
		
		model.addAttribute("top8List", top8List);		
		model.addAttribute("favoriteNumList", favoriteNumList);
		model.addAttribute("favoriteWordList", favoriteWordList);
		model.addAttribute("user_no", user_no);
		
		for (PostingVO vo : top8List) {
			System.out.println(vo.getPosting_uploadpath());
			
		}
		for (FavoriteVO vo : favoriteWordList) {
			System.out.println("vo.getFavorite_keyword() : " + vo.getFavorite_keyword());
		
		}
		
		System.out.println("<<<<<<<<<<<<<<mainView.do");
		return viewpage;
		
	}
	
	@RequestMapping(value="/insertFC.do", method = RequestMethod.GET)
	public String insertFavoriteCountry(String user_no, String[] country,Model model){
		String viewpage = "main2/2_Main2";
		System.out.println("insertFC.do>>>>>>>>>>>>>>");
		System.out.println("user_no : " + user_no);
		for (String string : country) {
			System.out.println("country : " + string);
		}
		// 관심국가번호저장
		service.insertFavoriteCountry(user_no, country);
		
		List<PostingVO> top8List = service.selectTop8();
		List<UserfavoriteVO> favoriteNumList = service.selectFavoriteNumList(user_no);
		List<FavoriteVO> favoriteWordList = service.selectFavoriteWordList(user_no);
		model.addAttribute("top8List", top8List);		
		model.addAttribute("favoriteNumList", favoriteNumList);
		model.addAttribute("favoriteWordList", favoriteWordList);
		model.addAttribute("user_no", user_no);		
		
		for (FavoriteVO vo : favoriteWordList) {
			System.out.println("vo.getFavorite_keyword() : " + vo.getFavorite_keyword() );
		}
		
		System.out.println("<<<<<<<<<<<<<<insertFC.do");
		return viewpage;
		
	}

	// 은정따리 은정따 ( Top8 게시글 상세보기 )
	@RequestMapping(value="/readTop8Detail.do", method = RequestMethod.GET)
	public String top8DetailView(String posting_no, HttpSession session, Model model){
		String viewpage = "posting/PostingDetail"; // 어차피 변경될 녀석. 
		System.out.println("readTop8Detail.do>>>>>>>>>>>>>>>>>>>>>>");
		System.out.println("posting_no : " + posting_no);
		
		MemberVO mVo = (MemberVO) session.getAttribute("member");
		String login_user_no = mVo.getUser_no();
		PostingVO posting = service.selectOnePostingByNum(posting_no, login_user_no);
		
		System.out.println("posting.getPosting_no() : " + posting.getPosting_no());
		System.out.println("posting.getPosting_title() : " + posting.getPosting_title());
		
		model.addAttribute("posting", posting);
		System.out.println("<<<<<<<<<<<<<<<<<<<<<<readTop8Detail.do");
		return viewpage;		
	}
}
