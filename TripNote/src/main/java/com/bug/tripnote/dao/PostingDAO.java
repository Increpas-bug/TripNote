package com.bug.tripnote.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bug.tripnote.model.PostingVO;

@Repository
public class PostingDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	// 게시글 등록 
	public void insert(PostingVO vo){
		System.out.println("PostingDAO INSERT : " + vo.toString());
		sqlSessionTemplate.insert("posting_ns.insertPosting", vo);
	}

	// 해시태그 등록 
	public void insertTag(int posting_no, String tag){
		
		logger.info("insertTag : " + tag + "/" + posting_no);
		
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("posting_no", posting_no);
		map.put("tag", tag);
		
		int tmp = sqlSessionTemplate.insert("posting_ns.insertHashtag",map);
		System.out.println("insertHashtag의 리턴"+tmp);
	}

	// 해시태그 검색
	public List<PostingVO> searchPosting(String tag, String login_user_no) {
		System.out.println("??로 넘어갔는가?");
		System.out.println("tag : " + tag);
		System.out.println("login_user_no : " + login_user_no);
		Map<String, String> map = new HashMap<String, String>();
		map.put("tag", tag);
		map.put("login_user_no", login_user_no);
		
		return sqlSessionTemplate.selectList("posting_ns.searchPosting",map);
	}
	


}
