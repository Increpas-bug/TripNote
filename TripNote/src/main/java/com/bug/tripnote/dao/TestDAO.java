package com.bug.tripnote.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bug.tripnote.dao.mapper.MainMapper;
import com.bug.tripnote.model.TestVO;

/**
 * 
 * @author 김은정
 *
 */

@Repository
public class TestDAO {

	Logger logger = LoggerFactory.getLogger(getClass());

	/*
	 * sqlSessionTemplate로 mapper의 쿼리문을 직접 호출하는 방식이 아닌
	 * Mapper인터페이스를 정의하고 호출하는 방식으로 한다
	 */
	
	@Autowired
	//private SqlSessionTemplate sqlSessionTemplate;
	private MainMapper mapper;
	
	public TestVO selectTest() {
//		TestVO vo = sqlSessionTemplate.selectOne("tripnote_test.selectTest");
		TestVO vo = mapper.selectTest();
		logger.info(vo.toString());
		
		return vo;
	}
}
