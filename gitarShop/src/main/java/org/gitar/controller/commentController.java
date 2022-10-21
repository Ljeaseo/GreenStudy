package org.gitar.controller;

import org.gitar.model.commentVO;
import org.gitar.model.qnaVO;
import org.gitar.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class commentController {

	@Autowired
	CommentService CS;
	
	//후기 쓰기
	@RequestMapping(value="/commemtwrite/new",method = RequestMethod.POST)
	public ResponseEntity<String>commemtwrite(@RequestBody commentVO commentvo){
		
		int result=CS.commemtwrite(commentvo);
		
		System.out.println(commentvo);
		
		return result ==1?new ResponseEntity<>("SUCCESS",HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	//qna 쓰기
	@RequestMapping(value="/qnawrite/new",method = RequestMethod.POST)
	public ResponseEntity<String>qnawrite(@RequestBody qnaVO qnavo){
		
		int result=CS.qnawrite(qnavo);
		
		System.out.println(qnavo);
		
		return result ==1?new ResponseEntity<>("SUCCESS",HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	
	
}
