package com.bug.tripnote.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.BlogDAO;
import com.bug.tripnote.dao.FavoriteMainViewDAO;
import com.bug.tripnote.model.BlogVO;
import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;


@Service
public class BlogService {
	//블로그 프로필 사진을 바꾸어보자!
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BlogDAO blogDAO;
	@Autowired
	private FavoriteMainViewDAO dao;
	
	//사용자 블로그 여부
	@Transactional
	public MemberVO blogYNSelect(String user_no) {
		logger.info(user_no);
//		logger.info(user_blogyn);
		return blogDAO.blogYNSelect(user_no);
	}
	//블로그 생성
	@Transactional
	public void blogYNInsert(String user_no) {
		// 블로그 생성 dao함수1
		blogDAO.blogYNInsert(user_no);
		// 블로그 YN 회원테이블에 update
		blogDAO.blogYNUpdate(user_no);
	}
	
	// 블로그 정보 조회
	@Transactional
	public BlogVO blogInfoSelect(String user_no) {
		//logger.info(blog_no.toString());
		return blogDAO.blogInfoSelect(user_no);
	}
	
	// 프로필 사진 등록
	@Transactional
	public int profilePhotoInsert(BlogVO bvo) {
		logger.info(bvo.toString());
		return blogDAO.profilePhotoInsert(bvo);
	}
	// 프로필 사진 수정
	@Transactional
	public void profilePhotoUpdate(BlogVO bvo) {
		blogDAO.profilePhotoUpdate(bvo);
	}
	
	// 타이틀 사진 등록
	@Transactional
	public void titlePhotoInsert(BlogVO bvo) {
		blogDAO.titlePhotoInsert(bvo);
	}
	// 타이틀 사진 수정
	@Transactional
	public void titlePhotoUpdate(BlogVO bvo) {
		blogDAO.titlePhotoUpdate(bvo);
	}
	// 블로그 제목 수정
	@Transactional
	public void blogTitleUpdate(BlogVO bvo) {
		 blogDAO.blogTitleUpdate(bvo);
	}
	// 블로그 소개글 수정
	@Transactional
	public void blogDetailUpdate(BlogVO bvo) {
		blogDAO.blogDetailUpdate(bvo);
	}
	
	// 포스팅 불러오기
	@Transactional
	public List<PostingVO> selectMyPosting(String my_user_no) {
		//게시판 리스트
		List<PostingVO> postingList = blogDAO.selectMyPosting(my_user_no);
		
		// 태그/댓글 리스트
		for (PostingVO vo : postingList) {
			int posting_no = vo.getPosting_no();
			vo.setHashtag(dao.selectAllHashtags(posting_no)); // 태그
			vo.setComments(dao.selectAllComments(posting_no)); // 댓글
		}
		
		return postingList;
	}
	
}
