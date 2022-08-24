package org.wow.service;


import java.util.ArrayList;

import org.wow.model.ReplyVO;

public interface ReplyService {
	
	
	// 댓글 쓰기를 위한 설계
	public int rewrite(ReplyVO reply);
	// 댓글 리스트를 위한 설계
	public ArrayList<ReplyVO> list(int bno);
}
