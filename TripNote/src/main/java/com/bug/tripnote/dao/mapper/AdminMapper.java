package com.bug.tripnote.dao.mapper;
import java.util.List;

import com.bug.tripnote.model.BlacklistVO;
import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;


public interface AdminMapper {
	
	public List<PostingVO> selectAllPosting();
	
	public List<PostingVO> selectBadPosting();
	
	public int deleteBadPosting(int posting_no);
	
	public List<MemberVO> selectAllMember();
	
	public int banMember(String user_email);
	
	public List<BlacklistVO> selectBlacklist();
				
	public int insertBlacklist(String user_email);
	

	

}
