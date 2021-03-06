package com.bug.tripnote.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.bug.tripnote.model.BlogVO;
import com.bug.tripnote.model.MemberVO;
import com.bug.tripnote.model.PostingVO;
import com.bug.tripnote.service.PostingWriteService;

@Controller
@RequestMapping(value = "/posting_Write.do")
public class PostingWriteController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private PostingWriteService service;
		
		
		@RequestMapping(method = RequestMethod.GET)
		public String form(Model model){
			logger.info("등록폼으로 고");
			return "posting/2_Posting_write";
		}
	
	
		@RequestMapping(method = RequestMethod.POST)
		public String onSubmit(@ModelAttribute("Posting") PostingVO pVo, HttpSession session, BlogVO bVo) {
			logger.info(pVo.toString());
			
			MemberVO mVo = (MemberVO) session.getAttribute("member");
			String user_no = mVo.getUser_no();
			
			try {
		
				// 파일 업로드
				MultipartFile mfile = pVo.getMfile();
				// 파일 명을 VO에 설정
				pVo.setPosting_uploadpath(mfile.getOriginalFilename());
				
				// Service 메소드를 호출
				System.out.println("컨트롤러입니다 >> 서비스로 갔수까?. ");
				System.out.println("mfile = " + mfile);

				if (mfile != null && mfile.getSize() != 0) {
					String filename = mfile.getOriginalFilename(); // 업로드 파일명
					// 첨부이미지 폴더를 외부에 빼줌.			
					String upath = "C:/upload";
					/*String upath = request.getServletContext().getRealPath("/upload");*/
					
					System.out.println(upath + "경로 설정 완료");
					// upload폴더 File 객체 생성
					File file = new File(upath + "/" + filename);
					mfile.transferTo(file); // 파일을 업로드 폴더에 복사

				}

				service.insertPost(pVo, user_no);
				service.insertTag(pVo.getPosting_no(), pVo.getTag());
				
				return "redirect:2_My_Main.do?user_no="+bVo.getUser_no();
				
			} catch (Exception e) {
				return "redirect:2_My_Main.do?user_no="+bVo.getUser_no();
			}
		}

	}


