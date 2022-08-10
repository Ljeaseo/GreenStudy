package org.wow.mapper;

import java.util.ArrayList;

import org.wow.model.BoardVo;

public interface BoardMapper {
	//글쓰기에 해당되는 DB 작업 설계
	public void write(BoardVo board);
	// 게시글 목록 리스트에 해당되는 DB작업 설계
	public ArrayList<BoardVo> list(); //DB에 저장된 데이터를 배열로
	// 게시글 목록 리스트에서 제목을 클릭했을때 상세 내용을 조회하는
	// DB 작업 설계
	public BoardVo detail(BoardVo board);
	// 상세내용에 해당되는 내용을 수정하는 DB작업 설계
	public void modify(BoardVo board);
	// 상세 내용에 해당되는 내용을 삭제 하는 DB작업 설계
	public void remove(BoardVo board);
}
