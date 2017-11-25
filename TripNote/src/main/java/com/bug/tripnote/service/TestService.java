package com.bug.tripnote.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bug.tripnote.dao.TestDAO;
import com.bug.tripnote.model.TestVO;

/**
 * 
 * @author 김은정
 *
 */

@Service
public class TestService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private TestDAO dao;
	
	public TestVO selectTest() {
		TestVO vo = dao.selectTest();
		logger.info(vo.toString());
		
		return vo;
	}
}
