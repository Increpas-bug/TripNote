package com.bug.tripnote.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		// System.out.println("");

		logger.info("따아아아아아앙");
		logger.info(vo.toString());

		int row = service.insertMember(vo);

		if (row == 1) {
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

	@RequestMapping(value = "/loginForm.do")
	public String loginForm() {
		logger.info("회원등록 폼화면으로 갑시다");
		return "loginForm";

	}

	// 로그인
	@RequestMapping(value = "/login.do")
	public String loginMember(@ModelAttribute("member") MemberVO vo, HttpSession session) {
		// System.out.println("");

		logger.info("따아아아아아앙");
		logger.info(vo.toString());
		// return "login";
		System.out.println("getUser_email :" + vo.getUser_email());
		System.out.println("getUser_pw : " + vo.getUser_pw());

		MemberVO resultVo = null;
		resultVo = service.selectMember(vo);

		if (resultVo == null) {
			return "loginForm";
		} else {
			logger.info(resultVo.toString());
			
			session.setAttribute("member", resultVo);
			
			return "index";
		}

	}

}

/*
 * // 로그인 화면
 * 
 * @RequestMapping("/loginForm.do" ) public String loginForm() {
 * 
 * return "loginForm"; // views/member/login.jsp로 포워드 }
 * 
 * 
 * @RequestMapping(value="/login.do",method = RequestMethod.POST) public void
 * loginGo( @ModelAttribute("member")MemberVO vo,HttpSession session) {
 * 
 * logger.info(vo.toString()); logger.info("ni**a WTF??");
 * 
 * vo.getUser_email(); vo.getUser_pw();
 * 
 * String user_email = null; String user_pw = null;
 * vo=service.selectMember(user_email, user_pw); }
 */
