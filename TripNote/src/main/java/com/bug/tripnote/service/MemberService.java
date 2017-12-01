package com.bug.tripnote.service;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bug.tripnote.dao.MemberDAO;
import com.bug.tripnote.model.MemberVO;

/**
 * 
 * @author 나레기
 *
 */

@Service
public class MemberService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private MemberDAO dao;
	
	public int insertMember(MemberVO vo) {
		int row = dao.insertMember( vo );
//		logger.info(vo.toString());
		
		return row;
	}
	/*public int updateMember(MemberVO vo) {
		int row = dao.updateMember( vo );
		
		return row;
		
	}
	public static boolean loginCheck(MemberVO vo, HttpSession session) {
		// TODO Auto-generated method stub
		return false;
	}
	public static void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}
	public static boolean checkpassword(String user_id, String user_password) {
		// TODO Auto-generated method stub
		return false;
	}*/
	
	public static boolean loginCheck(MemberVO vo, HttpSession session) {
		return false;
	}
}
