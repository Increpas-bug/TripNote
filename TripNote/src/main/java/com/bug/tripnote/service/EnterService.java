package com.bug.tripnote.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.EnterDAO;
import com.bug.tripnote.dao.FavoriteMainViewDAO;
import com.bug.tripnote.model.FavoriteVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.model.UserfavoriteVO;

@Service
public class EnterService {
	
	@Autowired
	EnterDAO dao;
	@Autowired
	FavoriteMainViewDAO fdao;
	
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

    // Top8 상세보기 포스팅정보(+상세정보)
	@Transactional
	public PostingVO selectOnePostingByNum(String posting_no, String login_user_no) {
        // 게시글 정보
        PostingVO vo = dao.selectOnePostingByNum(posting_no, login_user_no);
        
		// 태그/댓글 리스트
        int posting_no_search = vo.getPosting_no();
        vo.setHashtag(fdao.selectAllHashtags(posting_no_search)); // 태그
        vo.setComments(fdao.selectAllComments(posting_no_search)); // 댓글
		
		return vo;
	}

}
