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

import com.bug.tripnote.model.CommentsVO;
import com.bug.tripnote.service.FavoriteMainViewService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * 댓글등록, 삭제
 * @author 김은정
 *
 */

@Controller
public class CommentsPostingController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	// 서비스 호출
	@Autowired
	private FavoriteMainViewService service;

	// 댓글등록
	@RequestMapping(value = "/commentWrite.do", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String commentsPosting(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		String flag = "comment";
		JSONObject jsonobject = getParamObj(request, response, flag);
		JSONArray jsonarray = new JSONArray();
		jsonarray.add(jsonobject); 
		logger.info(jsonarray.toString());
		
		return jsonarray.toString();
	}

	// 댓글 삭제
	@RequestMapping(value = "/commentDelete.do", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String commentsPostingDelete(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		String flag = "delete";
		JSONObject jsonobject = getParamObj(request, response, flag);
		JSONArray jsonarray = new JSONArray();
		jsonarray.add(jsonobject); 
		logger.info(jsonarray.toString());
		
		return jsonarray.toString();
	}
	
	private JSONObject getParamObj(HttpServletRequest request, HttpServletResponse response, String flag) {

		JSONObject obj = new JSONObject();
		
		if (flag.equals("comment")) { // 댓글등록
			String posting_no = request.getParameter("posting_no");
			String user_no = request.getParameter("user_no");
			String comment_content = request.getParameter("comment_content");
			
			CommentsVO vo = new CommentsVO();
			vo.setUser_no(Integer.parseInt(user_no));
			vo.setPosting_no(Integer.parseInt(posting_no));
			vo.setComment_content(comment_content);
			
			logger.info(vo.toString());
	
			String user_nickname = service.insertComments(vo);
			int comment_no = vo.getComment_no();
			
			obj.put("comment_no", comment_no);
			obj.put("user_nickname", user_nickname);
			obj.put("user_no", user_no);
			obj.put("posting_no", posting_no);
			obj.put("comment_content", comment_content);

		} else if (flag.equals("delete")) { // 댓글삭제
			String comment_no = request.getParameter("comment_no");
			service.deleteComments(comment_no);
			
			obj.put("comment_no", comment_no);
		}
		
		return obj;
	}
	
}
