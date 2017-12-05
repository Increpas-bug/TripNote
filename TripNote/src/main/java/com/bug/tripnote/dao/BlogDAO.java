package com.bug.tripnote.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bug.tripnote.model.BlogVO;
import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;

/*@Controller("blogDAO")*/
@Repository
public class BlogDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	// 블로그 여부 조회
	public MemberVO blogYNSelect(String user_no) {
//		Map<String, Object> map = new HashMap<String,Object>();
		logger.info(user_no.toString());
//		logger.info(user_blogyn.toString());
//		int userNum = Integer.parseInt(user_no);
//		map.put("user_no", userNum);
//		map.put("user_blogYN", user_blogyn);
		return sqlSessionTemplate.selectOne("blog_ns.blogYNSelect", user_no);
	}

	// 블로그 없다면 생성
	public int blogYNInsert(String user_no) {
		return sqlSessionTemplate.insert("blog_ns.blogYNInsert", user_no);
	}
	
	
	// 사용자 테이블에 블로그가 있다고 업데이트
	public int blogYNUpdate(String user_no) {
		return sqlSessionTemplate.update("blog_ns.blogYNUpdate", user_no);
	}
	
	
	// user_no로 블로그 정보 출력
	public BlogVO blogInfoSelect(String user_no) {
		logger.info(user_no);
		return sqlSessionTemplate.selectOne("blog_ns.blogInfoSelect", user_no);
	}
	
	// 프로필 사진 등록
	public int profilePhotoInsert(BlogVO bvo) {
		logger.info(bvo.toString());
		return sqlSessionTemplate.insert("blog_ns.profilePhotoInsert", bvo);
	}
	// 프로필 수정
	public void profilePhotoUpdate(BlogVO bvo) {
		sqlSessionTemplate.update("blog_ns.profilePhotoUpdate", bvo);
	}
	// 타이틀 사진 등록
	public void titlePhotoInsert(BlogVO bvo) {
		sqlSessionTemplate.insert("blog_ns.titlePhotoInsert", bvo);
	}
	// 타이틀 사진 수정
	public void titlePhotoUpdate(BlogVO bvo) {
		sqlSessionTemplate.update("blog_ns.titlePhotoUpdate", bvo);
	}
	// 블로글 제목 수정
	public void blogTitleUpdate(BlogVO bvo) {
		sqlSessionTemplate.selectOne("blog_ns.blogTitleUpdate", bvo);
	}
	// 블로그 소개글 수정
	public void blogDetailUpdate(BlogVO bvo) {
		sqlSessionTemplate.selectOne("blog_ns.blogDetailUpdate", bvo);
	}
		
	// 게시판 리스트
	public List<PostingVO> selectMyPosting(String my_user_no){
		List<PostingVO> postingList = sqlSessionTemplate.selectList("blog_ns.selectMyPosting", my_user_no);
		return postingList;
	}
}

