package com.bug.tripnote.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bug.tripnote.model.BlogVO;

/*@Controller("blogDAO")*/
@Repository
public class BlogDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	/*
	 * // blog_no로 블로그 정보 출력
	public BlogVO blogInfoSelect(String blog_no) {
		logger.info(blog_no.toString());
		return (BlogVO)sqlSessionTemplate.selectOne("blog_ns.blogInfoSelect", blog_no);
	}*/
	
	// 프로필 등록(프로필 사진)
	public int profilePhotoInsert(BlogVO bvo) {
		logger.info(bvo.toString());
		return sqlSessionTemplate.insert("blog_ns.profilePhotoInsert", bvo);
	}
	// 프로필 수정
	
}

