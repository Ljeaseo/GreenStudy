package org.wow.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
	
	@RequestMapping(value="/uploadForm", method = RequestMethod.GET)
	public void uploadForm() {
		
	}
	
	@RequestMapping(value="/uploadAction", method = RequestMethod.POST)
	public void uploadFormPost(MultipartFile[] uploadFile) {
		
		// 폴더 경로
		String uploadFolder = "D:\\upload";
		
		
		
		//for(변수명 : 배열명)
		
		for(MultipartFile multipartFile: uploadFile) {

			System.out.println(multipartFile.getOriginalFilename());
			System.out.println(multipartFile.getSize());
			
			// 파일저장
			
			
			//                       어느폴더에(D:\\upload),      어떠 파일 이름으로()
			File saveFile = new File(uploadFolder,multipartFile.getOriginalFilename());
			
			// saveFile을 전송(transferTo)
			// 예외처리
			try {      
				multipartFile.transferTo(saveFile);
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
		}
		
	}
}
