package org.wow.service;



import java.util.ArrayList;

import org.wow.model.BoardVo;

public interface BoardService {
	 // 글쓰기 설계
	public void write(BoardVo board);
	 // 글 목록 리스트 설계
	public ArrayList<BoardVo> list();
	 // 글 상세 내용 보기 설계
	public BoardVo detail(BoardVo board);
	 // 글 수정 설계
	public void modify(BoardVo board);
	 // 글 삭제 설계
	public void remove(BoardVo board);
}
