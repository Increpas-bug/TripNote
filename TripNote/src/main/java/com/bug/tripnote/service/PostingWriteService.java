package com.bug.tripnote.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.BlogDAO;
import com.bug.tripnote.dao.PostingDAO;
import com.bug.tripnote.model.BlogVO;
import com.bug.tripnote.model.PostingVO;

@Service
public class PostingWriteService {

	@Autowired
	private PostingDAO dao;
	@Autowired
	private BlogDAO bdao;

	// 게시글 등록
	@Transactional
	public void insertPost(PostingVO vo, String user_no) {
		System.out.println("PostingService - user_no : " + user_no);
		BlogVO bVo = bdao.blogInfoSelect(user_no);

		vo.setBlog_no(bVo.getBlog_no());
		dao.insert(vo); // 게시글번호
	}

	// 해시태그 저장
//	@Transactional
	public void insertTag(int posting_no, String tag) {

		// 1. split
		tag = tag.replace(" ", "");
		String htag[] = tag.split("#");

		// 2. 해시태그 갯수만큼 insert 해시태그 테이블
		for (int i = 1; i <= htag.length; i++) { // 0으로 하면 null값도 추가됨.
			dao.insertTag(posting_no, htag[i]);
		}
	}

}
