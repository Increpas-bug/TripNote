package com.bug.tripnote.dao.mapper;
import java.util.List;

import com.bug.tripnote.model.BlacklistVO;
import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;


public interface AdminMapper {
	
	public List<PostingVO> selectAllPosting();
	
	public List<PostingVO> selectBadPosting();
	
	public List<PostingVO> deleteBadPosting();
	
	public List<MemberVO> selectAllMember();
	
	public List<MemberVO> banMember();
	
	public List<BlacklistVO> selectBlacklist();
				
	public List<BlacklistVO> insertBlacklist();
	

	

}
