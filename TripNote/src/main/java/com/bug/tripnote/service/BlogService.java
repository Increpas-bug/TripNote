package com.bug.tripnote.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.BlogDAO;
import com.bug.tripnote.model.BlogVO;


@Service
public class BlogService {
	//블로그 프로필 사진을 바꾸어보자!
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BlogDAO blogDAO;
	
	/*// 블로그 정보 조회
	@Transactional
	public BlogVO blogInfoSelect(String blog_no) {
		logger.info(blog_no.toString());
		return blogDAO.blogInfoSelect(blog_no);
	}*/
	
	// 프로필 등록
	@Transactional
	public int profilePhotoInsert(BlogVO bvo) {
		logger.info(bvo.toString());
		return blogDAO.profilePhotoInsert(bvo);
	}
}
