package com.bug.tripnote.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bug.tripnote.dao.mapper.MainMapper;
import com.bug.tripnote.model.MemberVO;

/**
 * 
 * @author 나건우
 *
 */

@Repository
public class MemberDAO {

	Logger logger = LoggerFactory.getLogger(getClass());

	/*
	 * sqlSessionTemplate로 mapper의 쿼리문을 직접 호출하는 방식이 아닌
	 * Mapper인터페이스를 정의하고 호출하는 방식으로 한다
	 */
	
	@Autowired
	//private SqlSessionTemplate sqlSessionTemplate;
	private MainMapper mapper;
	
	public int insertMember(MemberVO vo) {
//		TestVO vo = sqlSessionTemplate.selectOne("tripnote_test.selectTest");
		int row = mapper.insertMember(vo);
	//	logger.info(vo.toString());
		
		return row;
	}
	

	public MemberVO selectMember(MemberVO vo) {
		System.out.println("MemberDAO.java : selectMember : 들어옴2");
		
		MemberVO resultVo = mapper.selectMember(vo);
		
		return resultVo;
	}
	
	
	/*@Autowired
	private static SqlSessionTemplate sqlSessionTemplate;
	

	public MemberVO selectMember(String user_email, String user_pw) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_email", user_email);
		map.put("user_pw", user_pw);
		return sqlSessionTemplate.selectOne("member_ns.selectMember", map);
	}*/
	
	

	


}
