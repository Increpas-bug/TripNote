package com.bug.tripnote.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.FavoriteMainViewDAO;
import com.bug.tripnote.dao.PostingDAO;
import com.bug.tripnote.model.PostingVO;

@Service
public class PostingService {

	@Autowired
	private PostingDAO postingDAO;
	@Autowired
	private FavoriteMainViewDAO fDAO;
	
	
	// 값을 받아온다.. 
	@Transactional
	public List<PostingVO> getPostingList(String tag, String login_user_no) {
		
		System.out.println("DAO로 넘어갔는가?");
		System.out.println("tag : " + tag);
		
		// 검색된 애들만 리스트로 저장. (상세페이지에 보여야 됨) 
		List<PostingVO> postingList = postingDAO.searchPosting(tag, login_user_no);
		
		for (PostingVO vo : postingList) {
			int posting_no = vo.getPosting_no(); // vo에 저장된 포스팅 번호 가져와 변수에 저장. 
			vo.setHashtag(fDAO.selectAllHashtags(posting_no)); // 포스팅 번호에 등록된 태그 저장.
			vo.setComments(fDAO.selectAllComments(posting_no)); // 포스팅 번호에 등록된 댓글 저장.
		}
		
		return postingList;
	}
	
	
	

	
}
