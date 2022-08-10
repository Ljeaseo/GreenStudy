package org.wow.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.wow.model.BoardVo;
import org.wow.service.BoardService;


@Controller
public class BoardController {
	@RequestMapping(value="/board/list", method = RequestMethod.GET) // form 태그의 method 방식으로 .get 또는 .post로 써주면 된다. 
	//게시판 목록 리스트
	public String list() { 
		return "board/list";
	}
	//게시판 상세 페이지
	//게시판 수정 및 삭제 페이지
	
	@Autowired         //BoardController 와 BoardService를 연결.
	BoardService bs;
	
	
	//게시판 글쓰기 페이지(화면)
	@RequestMapping(value="/board/write", method = RequestMethod.GET)
	public String write() { 
		return "board/write";
	}
	//게시판 글쓰기 페이지(insert가 이루어짐)
	@RequestMapping(value="/board/write", method = RequestMethod.POST)
	public void writePost(BoardVo board) { 
		// 비즈니스 영역 연결한 후 BoardService에 있는 write 메소드를 호출
		bs.write(board);
		
		
	}
}
