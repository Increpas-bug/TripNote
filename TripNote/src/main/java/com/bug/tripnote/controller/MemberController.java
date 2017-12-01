package com.bug.tripnote.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.service.MemberService;

/**
 * 
 * @author 나레기
 *
 */

@Controller
public class MemberController {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private MemberService service;

	// get -> 회원등록 폼 화면 -> post전송해서 memberInsert 실행

	@RequestMapping(value = "/joinForm.do", method = RequestMethod.GET)
	public String joinForm() {
		logger.info("회원등록 폼화면으로 갑시다");
		return "joinForm";

	}

	// . 회원 등록
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinMember(@ModelAttribute("member") MemberVO vo) {
		//System.out.println("");
		
		logger.info("따아아아아아앙");
		logger.info(vo.toString());
		//return "login";
		
		
		int row = service.insertMember(vo);

		
		if (row == 	1) {
			return "redirect:loginForm.do";

		} else {
			return "join.do";
		}
	}
	

	/*
	 * // 회원 정보 수정 처리
	 * 
	 * @RequestMapping("/update.do") public String
	 * memberUpdate(@ModelAttribute("member") MemberVO vo){
	 * service.updateMember(vo); return "redirect:/member/list.do"; }
	 */

	// 로그인 화면
	@RequestMapping("/loginForm.do" )
	public String loginForm() {
		
		return "loginForm"; // views/member/login.jsp로 포워드
	}
	
	// 02. 로그인 처리
    @RequestMapping("login.do")
    public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session){
//        boolean result = MemberService.loginCheck(vo, session);
    	boolean result = true;
        ModelAndView mav = new ModelAndView();
        if (result == true) { // 로그인 성공
            // main.jsp로 이동
            mav.setViewName("index");
            mav.addObject("msg", "success");
        } else {    // 로그인 실패
            // login.jsp로 이동
            mav.setViewName("loginForm");
            mav.addObject("msg", "failure");
        }
        return mav;
    }
	

	/*//  로그인 처리
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginMember(@ModelAttribute("member") MemberVO vo) {
	
		logger.info("로그인 완료");
		logger.info(vo.toString());
		vo.setUser_email("user_email");
		vo.setUser_pw("user_pw");
		return "index";
	}*/
		
	/*	logger.info("로그온");
		logger.info(vo.toString());
		//return "login";
		
		
		int row = service.selectMember(vo);

		
		if (row == 	1) {
			return "redirect:index.do";

		} else {
			return "loginForm";
		}
	}*/
	
	
	
	 
	

}
