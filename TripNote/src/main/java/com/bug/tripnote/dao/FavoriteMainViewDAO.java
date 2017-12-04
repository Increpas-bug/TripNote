package com.bug.tripnote.dao;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bug.tripnote.dao.mapper.FavoriteMainMapper;
import com.bug.tripnote.model.CommentsVO;
import com.bug.tripnote.model.KeepingVO;
import com.bug.tripnote.model.LikesVO;
import com.bug.tripnote.model.PostingVO;

@Repository
public class FavoriteMainViewDAO {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private FavoriteMainMapper mapper;
	
	// 게시판 리스트
	public List<PostingVO> selectAllPosting(String login_user_no) {
		List<PostingVO> postingList = mapper.selectAllPosting(login_user_no);
		logger.info(postingList.toString());
		
		return postingList;
	}

	// 태그 리스트
	public List<String> selectAllHashtags(int posting_no){
		List<String> tagList = mapper.selectAllHashtags(posting_no);
		logger.info(tagList.toString());
		
		return tagList;
	}

	// 댓글 리스트
	public List<CommentsVO> selectAllComments(int posting_no){
		List<CommentsVO> commentList = mapper.selectAllComments(posting_no);
		logger.info(commentList.toString());
		
		return commentList;
	}
	
	// 댓글등록
	public void insertComments(CommentsVO vo) {
		mapper.insertComments(vo);
	}
	
	// 댓글삭제
	public void deleteComments(String comment_no) {
		mapper.deleteComments(comment_no);
	}
	
	// 유저명조회
	public String selectUserNickname(int user_no) {
		return mapper.selectUserNickname(user_no);
	}
	
	// 보관처리 (keeping 등록)
	public int insertKeeping(KeepingVO vo) {
		logger.info(vo.toString());
		
		return mapper.insertKeeping(vo);
	}
	// 보관취소 (keeping 삭제)
	public int deleteKeeping(KeepingVO vo) {
		logger.info(vo.toString());
		
		return mapper.deleteKeeping(vo);
	}

	// 좋아요처리 (likes 등록)
	public void insertLikes(LikesVO vo) {
		logger.info(vo.toString());
		mapper.insertLikes(vo);
	}
	public void updatePostingLikecountUp(String posting_no) {
		logger.info(posting_no);
		mapper.updatePostingLikecountUp(posting_no);
	}
	
	// 좋아요취소 (likes 삭제)
	public void deleteLikes(LikesVO vo) {
		logger.info(vo.toString());
		mapper.deleteLikes(vo);
	}
	public void updatePostingLikecountDown(String posting_no) {
		logger.info(posting_no);
		mapper.updatePostingLikecountDown(posting_no);
	}
	
	// 주간 좋아요
	public int checkWeeklyHitcount(Map<String, String> map) {
		logger.info(map.toString());
		return mapper.checkWeeklyHitcount(map);
	}
	public void insertWeeklyHitcount(Map<String, String> map){
		logger.info(map.toString());
		mapper.insertWeeklyHitcount(map);
	}
	public void updateWeeklyHitcountUp(Map<String, String> map){
		logger.info(map.toString());
		mapper.updateWeeklyHitcountUp(map);
	}
	public void updateWeeklyHitcountDown(Map<String, String> map){
		logger.info(map.toString());
		mapper.updateWeeklyHitcountDown(map);
	}
	public int selectPostingLikecount(String posting_no) {
		logger.info("posting_no : " + posting_no);
		return mapper.selectPostingLikecount(posting_no);
	}
	
}
