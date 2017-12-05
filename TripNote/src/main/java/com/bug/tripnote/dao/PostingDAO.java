package com.bug.tripnote.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bug.tripnote.model.PostingVO;

@Component("postingDAO")
public class PostingDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 게시글 등록 
	public void insert(PostingVO vo){
		
		sqlSessionTemplate.insert("posting_ns.insertPosting",vo);
	}

	// 해시태그 등록 
	public void insertTag(String tag){
		
		sqlSessionTemplate.insert("posting_ns.insertHashtag",tag);
	}

	// 해시태그 검색
	public List<PostingVO> searchPosting(String tag, String login_user_no) {
		System.out.println("??로 넘어갔는가?");
		System.out.println("tag : " + tag);
		System.out.println("login_user_no : " + login_user_no);
		Map<String, String> map = new HashMap<String, String>();
		map.put("tag", tag);
		map.put("login_user_no", login_user_no);
		return sqlSessionTemplate.selectList("posting_ns.selectSearchPosting", map);
		
		
	}
	


}
