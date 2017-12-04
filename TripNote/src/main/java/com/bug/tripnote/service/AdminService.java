// 뷰 <- 컨트롤러 -> !서비스 -> DAO 
package com.bug.tripnote.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bug.tripnote.dao.AdminDAO;
import com.bug.tripnote.model.BlacklistVO;
import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;



@Service
public class AdminService {
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private AdminDAO dao;
	
	
	// 전체 포스팅 조회
	public List<PostingVO> selectAllPosting() {	
		// 추가
		List<PostingVO> list = dao.selectAllPosting();
		
		logger.info("전체 포스팅 조회");		
		// DAO 리턴
		//return dao.selectBadPosting();
		
		//수정 
		return list;

	}
	
	// 배드카운팅 누적 포스팅 조회
	public List<PostingVO> selectBadPosting() {	
		// 추가
		List<PostingVO> list = dao.selectBadPosting();
		
		logger.info("배드카운팅 누적 포스팅 조회");		
		// DAO 리턴
		//return dao.selectBadPosting();
		
		//수정 
		return list;

	}
	
	// 배드포스팅 삭제
	public int deleteBadPosting(int posting_no) {	
		
		
		logger.info("배드포스팅 삭제");		
		// DAO 리턴
		int vo = dao.deleteBadPosting(posting_no);
		
		return vo;

	}
	
	// 전체 회원 조회
	public List<MemberVO> selectAllMember() {	
		logger.info("전체 회원 조회");		
		// DAO 리턴
		List<MemberVO> list = dao.selectAllMember();
		
		return list;

	}
	
	// 회원 정지
//	public List<MemberVO> banMember() {	
//		logger.info("회원 정지");		
//		// DAO 리턴
//		List<MemberVO> list = dao.banMember();
//
//		return list;
//	}
	// int 매개변수 추가
	public int banMember(String user_email) {	
		logger.info("회원 정지");		
		// DAO 리턴
		dao.insertBlacklist(user_email); // 블랙리스트 추가
		int vo = dao.banMember(user_email);
		
		
		return vo;
		
	}
	
	// 블랙리스트 조회
	public List<BlacklistVO> selectBlacklist() {	
		logger.info("회원 정지");		
		// DAO 리턴
		List<BlacklistVO> list = dao.selectBlacklist();
		
		return list;

	}
	

}
