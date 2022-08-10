package org.wow.mapper;

import org.wow.model.BoardVo;

public interface BoardMapper {
	//글쓰기에 해당되는 DB 작업 설계
	public void write(BoardVo board);
}
