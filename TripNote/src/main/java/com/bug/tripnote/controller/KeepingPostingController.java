package com.bug.tripnote.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bug.tripnote.model.KeepingVO;
import com.bug.tripnote.service.FavoriteMainViewService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class KeepingPostingController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	// 서비스 호출
	@Autowired
	private FavoriteMainViewService service;

	// keeping 처리
	@RequestMapping(value = "/keeping.do", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String keepingPosting(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		String flag = "keeping";
		JSONObject jsonobject = getParamObj(request, response, flag);
		JSONArray jsonarray = new JSONArray();
		jsonarray.add(jsonobject); 
		logger.info(jsonarray.toString());
		
		return jsonarray.toString();
	}

	// keeping 취소
	@RequestMapping(value = "/keepingCancel.do", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String keepingPostingCancel(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		String flag = "cancel";
		JSONObject jsonobject = getParamObj(request, response, flag);
		JSONArray jsonarray = new JSONArray();
		jsonarray.add(jsonobject); 
		logger.info(jsonarray.toString());
		
		return jsonarray.toString();
	}
	
	private JSONObject getParamObj(HttpServletRequest request, HttpServletResponse response, String flag) {
		String posting_no = request.getParameter("posting_no");
		String user_no = request.getParameter("user_no");
		
		KeepingVO vo = new KeepingVO();
		vo.setUser_no(Integer.parseInt(user_no));
		vo.setPosting_no(Integer.parseInt(posting_no));
		
		logger.info(vo.toString());

		int rownum = 0;
		if (flag.equals("keeping")) {
			rownum = service.insertKeeping(vo);
		} else if (flag.equals("cancel")) {
			rownum = service.deleteKeeping(vo);
		}
		
		JSONObject obj = new JSONObject();
		obj.put("user_no", user_no);
		obj.put("posting_no", posting_no);
		obj.put("rownum", rownum);

		return obj;
	}
	
}
