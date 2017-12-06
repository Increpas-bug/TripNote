package com.bug.tripnote.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bug.tripnote.dao.mapper.EnterMapper;
import com.bug.tripnote.model.FavoriteVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.model.UserfavoriteVO;

@Repository
public class EnterDAO {
	
	@Autowired
	private EnterMapper mapper;
	
	public List<UserfavoriteVO> selectFavoriteList(String user_no){
		List<UserfavoriteVO> favoriteNumList = mapper.selectFavoriteNumList(user_no);
		
		return favoriteNumList;		
	}
	
	public List<PostingVO> selectTop8(){
		List<PostingVO> top8List = mapper.selectTop8();
		
		return top8List;
	}
	
	public List<FavoriteVO> selectFavoriteWordList(String user_no){
		List<FavoriteVO> favoriteWordList = mapper.selectFavoriteWordList(user_no);
		
		return favoriteWordList;		
	}
	
	public void insertFavoriteCountry(Map<String,Object> map){
		mapper.insertFavoriteCountry(map);
	}

	public PostingVO selectOnePostingByNum(String posting_no, String login_user_no){
		Map<String, String> map = new HashMap<String, String>();
		map.put("login_user_no", login_user_no);
		map.put("posting_no", posting_no);
		return mapper.selectOnePostingByNum(map);
	}
}
