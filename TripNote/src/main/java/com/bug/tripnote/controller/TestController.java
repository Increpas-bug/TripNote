package com.bug.tripnote.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bug.tripnote.model.TestVO;
import com.bug.tripnote.service.TestService;

/**
 * 
 * @author 김은정
 *
 */

@Controller
public class TestController {
	/*
		볼 수 있는 로그 레벨
		FATAL > ERROR > WARN > INFO > DEBUG > TRACE
	
		WARN :경고메세지
		INFO: 주로 이벤트 메세지
		DEBUG : 일반실행상태메세지 
	
		특정 로그 레벨 입력하면 그 이하의 로그만 볼수 있다.
		그래서 볼 수 있는 가장 높은  수준 TRACE는 
		모든 수준의 로그들을 확인 할수 있다.
	 */
	/*
		Logger logger = LoggerFactory.getLogger(getClass()); 이런식으로 선언하고
		logger.debug("Service : 메시지 모델 생성"); 이런식으로 찍고자하는 로그를 찍을 수 있다
		logger.warn("실 테이블에서 메세지 가져오세요");
		logger.info("ControllerLog : {},{}", log1,log2); // 값넣는 형식
	 */

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private TestService service;
	
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public String test(Model model) {
		TestVO vo = service.selectTest();
		
		model.addAttribute("test", vo);
		logger.info(vo.toString());
		
		return "test";
	}
}
