package org.wow.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.wow.model.ReplyVO;
import org.wow.service.ReplyService;


@Controller
public class ReplyController {
	
	@Autowired
	ReplyService rs;
	// 댓글 쓰기
	@RequestMapping(value="/replies/new",method = RequestMethod.POST)
	public ResponseEntity<String>replywrite(@RequestBody ReplyVO reply){
		// insert가 성공했으면 result 변수에 1 저장
		// insert가 실패했으면 result 변수에 0 저장 
		int result = rs.rewrite(reply);
		
		System.out.println(reply);
		//result가 1이면 HttpStatus.OK
		//result가 0이면 HttpStatus.INTERNAL_SERVER_ERROR
		return result==1?new ResponseEntity<>("success",HttpStatus.OK)
						:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	
	// 댓글 목록 리스트
	@RequestMapping(value="/replies/{bno}",method = RequestMethod.GET)
	public ResponseEntity<ArrayList<ReplyVO>> getlist(@PathVariable int bno){
		System.out.println(bno);
		
		
		
		return new ResponseEntity<>(rs.list(bno),HttpStatus.OK);
	}
	// 댓글 수정
	
	@RequestMapping(value="/replies/modify",method = RequestMethod.PUT)
	public ResponseEntity<String>replymodify(@RequestBody ReplyVO reply){
		System.out.println(reply);
		// update가 성공했으면 result 변수에 1 저장
		// update가 실패했으면 result 변수에 0 저장 
		rs.modify(reply);
		
		int result = rs.modify(reply);
		
		return result==1?new ResponseEntity<>("success",HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	// 댓글 삭제
	@RequestMapping(value="/replies/remove/{rno}",method = RequestMethod.DELETE)
	public ResponseEntity<String>replyremove(@PathVariable int rno){
		System.out.println(rno);
		rs.remove(rno); 
		
		int result = rs.remove(rno);
		
		return result==1?new ResponseEntity<>("success",HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
		
}
