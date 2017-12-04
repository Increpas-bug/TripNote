package com.bug.tripnote.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bug.tripnote.model.TestMain2VO;



/**
 * BoardListController : 게시판 리스트
 * @author 김중엽
 */

@Controller
public class TestController2 {
	
	// 게시판 리스트 start
	@RequestMapping(value = "/2_Main2.do", method = RequestMethod.GET)
	public String list(String pn, Model model) { // String pn v2.1에서 추가
		
	
		
		return "redirect:afterMain.do";
	}
	
	@RequestMapping(value = "/favoriteTest.do", method = RequestMethod.GET)
	public String favoriteTest( Model model, String[] test, String[] test2) {
		System.out.println("배열test : " + test);
		System.out.println("배열 값!!! : ");
		for (String string : test) {
			System.out.println(" / " + string);
			
		}
		System.out.println("배열test2 : " + test2);
		System.out.println("배열2 값!!! : ");
		for (String string : test2) {
			System.out.println(" / " + string);
		}
		model.addAttribute("olist", test);
		model.addAttribute("xlist", test2);
		//;
		
	
		
		return "test";
	}
	
	

	@RequestMapping(value = "/afterMain.do", method = RequestMethod.GET)
	public String afterMain( Model model) {
		System.out.println("###############afterMain");
		
		String englandb = "englandb";
		
		model.addAttribute("englandb", englandb);
	
		String[] slist = {"koreab", "japanb","englandb"};
		model.addAttribute("slist", slist);
	
		List<TestMain2VO> TopMainList = new ArrayList<TestMain2VO>();
		System.out.println("######TestMain2VO#########");
		TestMain2VO TestMain2VO= new TestMain2VO("001", "스시 먹고 싶다", "오사카 스시 맛있었는데... 이번에도 맛있었으면...", "sushi2.jpg");
		System.out.println(TestMain2VO.getPostNum());
		System.out.println(TestMain2VO.getTitle());
		System.out.println(TestMain2VO.getContent());
		System.out.println(TestMain2VO.getImageUrl());

		model.addAttribute("TestMain2VO", TestMain2VO);
		TopMainList.add(TestMain2VO);
		
		TestMain2VO topMainVO2= new TestMain2VO("002", "유후인 소고기", "생각보다 별로임, 고기 많이 없음, 맛은 있음.", "gogi2.jpg");
		TopMainList.add(topMainVO2);
		
		for (TestMain2VO vo : TopMainList) {
			System.out.println("vo.title : " + vo.getTitle());
		}
	
	
		
		
		System.out.println(TestMain2VO.getImageUrl());
		model.addAttribute("TopMainList", TopMainList);

		String title2 = "아~~~~~ 소고기~~~ 육회~~~";
		model.addAttribute("title2", title2);
		System.out.println(TestMain2VO.getImageUrl());
		return "main2/2_Main2";
	}
	
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String detail( Model model, @RequestParam(value="county") String county) {
		System.out.println("county?"+county);
		model.addAttribute("county", county);
		
		return "detail";
	}
}
