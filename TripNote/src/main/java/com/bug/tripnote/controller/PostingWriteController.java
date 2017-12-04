package com.bug.tripnote.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

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
			return "posting/PostingWrite";
		}
	
	
		@RequestMapping(method = RequestMethod.POST)
		public String onSubmit(@Valid @ModelAttribute("Posting") PostingVO pVo, String tag) {
			logger.info(pVo.toString());
			/*if (errors.hasErrors()) {
				model.addAttribute("requestPageNum", requestPageNum);
				return "PostingWrite";
			}*/
			try {
		
				// 파일 업로드
				MultipartFile mfile = pVo.getMfile();
				// 파일 명을 VO에 설정
				pVo.setPosting_uploadpath(mfile.getOriginalFilename());
				
				// Service 메소드를 호출
				service.insertPost(pVo);
				service.insertTag(tag);
				System.out.println("컨트롤러입니다 >> 서비스로 갔수까?. ");
				System.out.println("mfile = " + mfile);

				if (mfile != null && mfile.getSize() != 0) {
					String filename = mfile.getOriginalFilename(); // 업로드 파일명
					// 첨부이미지 폴더를 외부에 빼줌.			
					String upath = "C:/images";
					/*String upath = request.getServletContext().getRealPath("/upload");*/
					
					System.out.println(upath + "경로 설정 완료");
					// upload폴더 File 객체 생성
					File file = new File(upath + "/" + filename);
					mfile.transferTo(file); // 파일을 업로드 폴더에 복사

				}

				return "posting/PostingWrite";  
				
			} catch (Exception e) {
				return "posting/PostingWrite";
			}
		}

	}


