package org.wow.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.wow.model.BoardVo;
import org.wow.model.CriteriaVO;
import org.wow.model.PageVO;
import org.wow.service.BoardService;


@Controller
public class BoardController {
	 // form 태그의 method 방식으로 .get 또는 .post로 써주면 된다. 
	//게시판 목록 리스트

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
	public String writePost(BoardVo board) { 
		// 비즈니스 영역 연결한 후 BoardService에 있는 write 메소드를 호출
		
		bs.write(board);
		
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/board/list", method = RequestMethod.GET)	
	public String list(Model model, CriteriaVO cri) {
		//boardlist.jsp 실행할때 select된 결과를 가져와라.
		model.addAttribute("list", bs.list(cri));
		//list.jsp 실행 할 때 PageVO에 저장되어 있는 데이터를 가져와라.
		//                           생성자 호출(매개변수가 없는 생성자)
		//                           board테이블에 전체 건수를 대입
		bs.total(cri);
		model.addAttribute("paging", new PageVO(cri,bs.total(cri)));
		return "board/list";
	}
	@RequestMapping(value="/board/boarddetail", method = RequestMethod.GET)
	//public String detail(int bno) -> 가능
	public String detail(BoardVo board, Model model) {
		model.addAttribute("detail", bs.detail(board));
		//bs.detail(bno); 
		return"board/boarddetail";
	}
	@RequestMapping(value="/board/modify", method = RequestMethod.POST)
	public String modify(BoardVo board,RedirectAttributes rttr) {
		
		bs.modify(board);
		rttr.addAttribute("bno", board.getBno());
		//detail에서 수정한 내용을 보기 위해 list.jsp로 이동
		return "redirect:/board/list";
	}
	@RequestMapping(value="/board/remove", method = RequestMethod.POST)
	public String remove(BoardVo board) {
		//글 삭제
		bs.remove(board);
		return "redirect:/board/list";
	}
}   
