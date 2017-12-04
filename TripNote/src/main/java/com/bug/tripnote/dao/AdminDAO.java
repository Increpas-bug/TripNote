// 뷰 <- 컨트롤러 -> 서비스 -> !DAO 
package com.bug.tripnote.dao;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.mapper.AdminMapper;
import com.bug.tripnote.model.BlacklistVO;
import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;

/**


@Repository
public class TestDAO {

	Logger logger = LoggerFactory.getLogger(getClass());

	
	 * sqlSessionTemplate로 mapper의 쿼리문을 직접 호출하는 방식이 아닌
	 * Mapper인터페이스를 정의하고 호출하는 방식으로 한다
	 
	
	@Autowired
	//private SqlSessionTemplate sqlSessionTemplate;
	private TestMapper mapper;
	
	public TestVO selectTest() {
//		PostingVO vo = sqlSessionTemplate.selectOne("tripnote_test.selectTest");
		TestVO vo = mapper.selectTest();
		logger.info(vo.toString());
		
		return vo;
	}
}
*/


@Repository
public class AdminDAO {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired	
	private AdminMapper mapper;
	
	public List<PostingVO> selectAllPosting() {
		List<PostingVO> vo = mapper.selectAllPosting();
		logger.info(vo.toString());
		
		return vo;
	}


	
	@Transactional
	public List<PostingVO> selectBadPosting() {			
		List<PostingVO> vo = mapper.selectBadPosting();				
	logger.info(vo.toString());
		
		return vo;
	}
	
	@Transactional
	public int deleteBadPosting(int posting_no) {			
				
		logger.info("deleteBadPosting() 호출");
		
		return mapper.deleteBadPosting(posting_no);
	}
	
	@Transactional
	public List<MemberVO> selectAllMember() {			
		List<MemberVO> list = mapper.selectAllMember();				
	logger.info(list.toString());
		
		return list;
	}
	
//	@Transactional
//	public List<MemberVO> banMember() {			
//		List<MemberVO> vo = mapper.banMember();				
//	logger.info(vo.toString());
//		
//		return vo;
//	}
	
	@Transactional
	public int banMember(String user_email) {
		logger.info("banMember() 호출");
		return mapper.banMember(user_email);	
	}
	
	@Transactional
	public List<BlacklistVO>  selectBlacklist() {			
		List<BlacklistVO>  vo = mapper.selectBlacklist();				
	logger.info(vo.toString());
		
		return vo;
	}
	
	@Transactional
	public int  insertBlacklist(String user_email) {			
		int vo = mapper.insertBlacklist(user_email);				
	// logger.info(vo);
		
		return vo;
	}

//////////
//	private SqlSessionTemplate sqlSessionTemplate;
//	
//	public PostingVO selectAllPosting(PostingVO vo) {
//		sqlSessionTemplate.insert("admin_ns.selectAllPosting", vo);
//		return vo;
//	}
//
//	
//	
//	
	
}
	