package com.bug.tripnote.service;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bug.tripnote.dao.FavoriteMainViewDAO;
import com.bug.tripnote.model.CommentsVO;
import com.bug.tripnote.model.KeepingVO;
import com.bug.tripnote.model.LikesVO;
import com.bug.tripnote.model.PostingVO;

@Service
public class FavoriteMainViewService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private FavoriteMainViewDAO dao;
	
	@Transactional
	public List<PostingVO> selectAllPosting(String login_user_no) {
		// 게시판 리스트
		List<PostingVO> postingList = dao.selectAllPosting(login_user_no);
		
		// 태그/댓글 리스트
		for (PostingVO vo : postingList) {
			int posting_no = vo.getPosting_no();
			vo.setHashtag(dao.selectAllHashtags(posting_no)); // 태그
			vo.setComments(dao.selectAllComments(posting_no)); // 댓글
		}
		
		logger.info(postingList.toString());
		
		return postingList;
	}

	// 댓글등록
	@Transactional
	public String insertComments(CommentsVO vo) {
		// 댓글등록
		dao.insertComments(vo);
		
		// 댓글등록한 유저닉네임 조회
		int user_no = vo.getUser_no();
		String user_nickname = dao.selectUserNickname(user_no);
		
		vo.setUser_nickname(user_nickname);
		
		return user_nickname;
	}
	
	//댓글삭제
	public void deleteComments(String comment_no) {
		dao.deleteComments(comment_no);
	}

	// 보관처리 (keeping 등록)
	@Transactional
	public int insertKeeping(KeepingVO vo) {
		logger.info(vo.toString());
		
		return dao.insertKeeping(vo);
	}
	
	// 보관취소 (keeping 삭제)
	@Transactional
	public int deleteKeeping(KeepingVO vo) {
		logger.info(vo.toString());
		
		return dao.deleteKeeping(vo);
	}

	// 좋아요처리 (likes 등록)
	@Transactional
	public int insertLikes(LikesVO vo) {
		logger.info(vo.toString());
		
		// likes테이블에 추가
		dao.insertLikes(vo);
		
		// posting테이블에 likecount 증가
		String posting_no = Integer.toString(vo.getPosting_no());
		dao.updatePostingLikecountUp(posting_no);
		
		// weeklyhitcount 증가
		Calendar now = Calendar.getInstance();
		String weeks = now.get(Calendar.YEAR) + "_"+ now.get(Calendar.WEEK_OF_YEAR);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("posting_no", posting_no);
		map.put("weekly_number", weeks);
		
		int chk_week = dao.checkWeeklyHitcount(map);
		if (chk_week > 0) {
			dao.updateWeeklyHitcountUp(map);
		} else {
			dao.insertWeeklyHitcount(map);
		}
		
		// 좋아요횟수 리턴
		int likecount = dao.selectPostingLikecount(posting_no);
		
		return likecount;
	}
	
	// 좋아요취소 (likes 삭제)
	@Transactional
	public int deleteLikes(LikesVO vo) {
		logger.info(vo.toString());
		
		// likes테이블에 추가
		dao.deleteLikes(vo);
		
		// posting테이블에 likecount 감소
		String posting_no = Integer.toString(vo.getPosting_no());
		dao.updatePostingLikecountDown(posting_no);
		
		// weeklyhitcount 감소
		Calendar now = Calendar.getInstance();
		String weeks = now.get(Calendar.YEAR) + "_"+ now.get(Calendar.WEEK_OF_YEAR);

		Map<String, String> map = new HashMap<String, String>();
		map.put("posting_no", posting_no);
		map.put("weekly_number", weeks);
		
		dao.updateWeeklyHitcountDown(map);

		// 좋아요횟수 리턴
		int likecount = dao.selectPostingLikecount(posting_no);
		
		return likecount;
	}
}
