package com.bug.tripnote.dao.mapper;

import java.util.List;
import java.util.Map;

import com.bug.tripnote.model.FavoriteVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.model.UserfavoriteVO;

public interface EnterMapper {
	
	public List<UserfavoriteVO> selectFavoriteNumList(String user_no);
	public List<PostingVO> selectTop8();
	public List<FavoriteVO> selectFavoriteWordList(String user_no);
	public void insertFavoriteCountry(Map<String,Object> map);
	public PostingVO selectOnePostingByNum(String posting_no);
	
}
