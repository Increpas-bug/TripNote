package com.bug.tripnote.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.PostingDAO;
import com.bug.tripnote.model.HashtagVO;
import com.bug.tripnote.model.PostingVO;



@Service
public class PostingWriteService {

	@Autowired
	private PostingDAO dao;
	
	// 게시글 등록 
	@Transactional
	public void insertPost(PostingVO vo){
		
		dao.insert(vo); // 게시글번호
		
	}
	
	// 해시태그 저장
	@Transactional
	public void insertTag(String tag){
		
		//1. split
		tag = tag.replace(" ", "");
		String htag[] = tag.split("#");
				
		//2. 해시태그 갯수만큼  insert 해시태그 테이블
		for (int i = 0; i < htag.length; i++) {
			tag = htag[i];
			dao.insertTag(tag);
		}
	}
	
}
