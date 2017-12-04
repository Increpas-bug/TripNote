package com.bug.tripnote.dao.mapper;

import java.util.List;
import java.util.Map;

import com.bug.tripnote.model.CommentsVO;
import com.bug.tripnote.model.KeepingVO;
import com.bug.tripnote.model.LikesVO;
import com.bug.tripnote.model.PostingVO;

/**
 * 
 * @author 김은정
 *
 */

public interface FavoriteMainMapper {
	// 포스팅
	public List<PostingVO> selectAllPosting(String login_user_no); // 게시글 리스트
	public List<String> selectAllHashtags(int posting_no); // 태그 리스트
	public List<CommentsVO> selectAllComments(int posting_no); // 댓글 리스트
	public void insertComments(CommentsVO vo); // 댓글등록
	public void deleteComments(String comment_no); // 댓글삭제
	public int insertKeeping(KeepingVO vo); // 보관처리
	public int deleteKeeping(KeepingVO vo); // 보관취소
	
	// 유저명조회
	public String selectUserNickname(int user_no);
	
	// 좋아요처리
	public void insertLikes(LikesVO vo);
	public void updatePostingLikecountUp(String posting_no);
	
	// 좋아요취소
	public void deleteLikes(LikesVO vo);
	public void updatePostingLikecountDown(String posting_no);

	// 주간 좋아요
	public int checkWeeklyHitcount(Map<String, String> map);
	public void insertWeeklyHitcount(Map<String, String> map);
	public void updateWeeklyHitcountUp(Map<String, String> map);
	public void updateWeeklyHitcountDown(Map<String, String> map);
	public int selectPostingLikecount(String posting_no);
}
