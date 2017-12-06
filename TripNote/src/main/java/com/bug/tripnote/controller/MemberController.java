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

import javafx.scene.control.Alert;

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
		return "membership/2_Member_Main";
	}

	// . 회원 등록
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinMember(@ModelAttribute("member") MemberVO vo) {
		// System.out.println("");

		logger.info("따아아아아아앙");
		logger.info(vo.toString());

		int row = service.insertMember(vo);

		if (row == 1) {
			System.out.println("오긴오냐?");
			return "index";
			/*return "redirect:loginForm.do";*/
		} else {
			System.out.println("여기냐?");
			return "membership/2_Member_Main";
		}
	}
	
	@RequestMapping(value = "/updateMemberForm.do", method = RequestMethod.GET)
	public String get_updateMemberForm(MemberVO vo) {				
		logger.info("회원정보수정 폼화면으로 갑시다");
		return "membership/updateMemberForm";
	}

	
	@RequestMapping(value = "/updateMember.do", method = RequestMethod.POST)
	public String updateMemberForm(@ModelAttribute("member") MemberVO vo, HttpSession session) {
		service.updateMember(vo);		
		logger.info(vo.toString());
		
		MemberVO resultVo = null;
		resultVo = service.selectMember(vo);

		if (resultVo == null) {
			return "membership/updateMemberForm";
		} else {
			logger.info(resultVo.toString());
			
			session.setAttribute("member", resultVo);
			//String user_no = (String)session.getAttribute("user_no");
			
			return "index";
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
		return "membership/2_Member_Main";

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
			System.out.println("회원가입이나 해!");
			return "membership/2_Member_Main";
		} else {
			logger.info(resultVo.toString());
			
			session.setAttribute("member", resultVo);
			
			String user_no = resultVo.getUser_no();
			System.out.println("user_no : " + user_no);
			
			return "redirect:2_Main2.do?user_no=" + user_no;
		}

	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
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
