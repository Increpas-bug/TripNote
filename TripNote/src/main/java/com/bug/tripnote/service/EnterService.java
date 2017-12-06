package com.bug.tripnote.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bug.tripnote.dao.EnterDAO;
import com.bug.tripnote.model.FavoriteVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.model.UserfavoriteVO;

@Service
public class EnterService {
	
	@Autowired
	EnterDAO dao;
	
	public List<UserfavoriteVO> selectFavoriteNumList(String user_no) {
		
		List<UserfavoriteVO> favoriteNumList = dao.selectFavoriteList(user_no);
				
		return favoriteNumList;
		
	}
	
	public List<PostingVO> selectTop8(){
		List<PostingVO> top8List = dao.selectTop8();		
		
		for (PostingVO vo : top8List) {
			String content = vo.getPosting_content();
			int content_fix_length = 29;
			int title_fix_length = 12;
			if (content.length()>=content_fix_length) {
				vo.setPosting_content(content.substring(0, content_fix_length-2) + "  ...");
			}
			String title = vo.getPosting_title();
			if (title.length()>=title_fix_length) {
				vo.setPosting_title(title.substring(0, title_fix_length-2));			
				}		
			
		}
		
		return top8List;
	}
	
	public List<FavoriteVO> selectFavoriteWordList(String user_no){
		List<FavoriteVO> favoriteWordList = dao.selectFavoriteWordList(user_no);
		
		return favoriteWordList;
	}
	
	public void insertFavoriteCountry(String user_no, String[] country){
		Map<String,Object> map = new HashMap<String,Object>();
		for (String favorite_no : country) {
			if (favorite_no.equals("0")) {
				System.out.println("0은 버려!!!");
			}else{
			map.put("user_no", user_no);
			map.put("favorite_no", favorite_no);
			dao.insertFavoriteCountry(map);}
		}
	}
	
	public PostingVO selectOnePostingByNum(String posting_no) {
		return dao.selectOnePostingByNum(posting_no);		
	}

}
