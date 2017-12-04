package com.bug.tripnote.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.service.FavoriteMainViewService;

@Controller
public class FavoriteMainViewController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	// 서비스 호출
	@Autowired
	private FavoriteMainViewService service;
	
	// main 관심사 선택시 노출되는 게시글
	@RequestMapping(value = "/favoriteMainView.do", method = RequestMethod.GET)
	public String favoriteMainView(HttpSession session, Model model) {
		MemberVO vo = (MemberVO) session.getAttribute("member");
		String login_user_no = vo.getUser_no();
		
		// 게시글 리스트
		List<PostingVO> postingList = service.selectAllPosting(login_user_no);

		model.addAttribute("postingList", postingList);
		logger.info(postingList.toString());
		
		return "posting/favoriteMainView";
	}
	
}
