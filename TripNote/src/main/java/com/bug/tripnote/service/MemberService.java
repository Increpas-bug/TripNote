package com.bug.tripnote.service;


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
			
	public MemberVO selectMember(MemberVO vo) {
		System.out.println("MemberService.java : selectMember : 들어옴");
		MemberVO resultVo = dao.selectMember(vo);
		return resultVo;
	}
	

	public void updateMember(MemberVO vo) {
		System.out.println("MemberService.java : updateMember : 들어옴");
		dao.updateMember(vo);
		
	}
	
	

	
}
	
	
	
	
		
		
	
	

