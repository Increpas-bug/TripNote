package com.bug.tripnote.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.PostingDAO;
import com.bug.tripnote.model.PostingVO;

@Service
public class PostingService {

	@Autowired
	private PostingDAO postingDAO;

	
	// 값을 받아온다.. 
	@Transactional
	public List<PostingVO> getPostingList(String tag) {
		
		System.out.println("DAO로 넘어갔는가?");
		return postingDAO.searchPosting(tag);
	}
	
	
	

	
}
