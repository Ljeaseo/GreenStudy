package org.wow.mapper;

import java.util.ArrayList;

import org.wow.model.AttachFileVO;

public interface BoardAttachMapper {
	// 글쓰기 할때에 파일 업로드에 해당하는 DB설계
	public void insert(AttachFileVO attach);
	// 해당게시물의 첨부파일을 조회하는 DB 설계
	public ArrayList<AttachFileVO> attachlist(int bno);
	
}
