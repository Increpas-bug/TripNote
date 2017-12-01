package com.bug.tripnote.dao.mapper;

import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.TestVO;

/**
 * 
 * @author 김은정
 *
 */

public interface MemberMapper {
	public TestVO selectTest();
	public int insertMember(MemberVO vo);
}
