package org.wow.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wow.mapper.ReplyMapper;
import org.wow.model.ReplyVO;

// 댓글 관련 서비스
@Service
public class ReplyServicempl implements ReplyService {
	@Autowired
	ReplyMapper rm;
	// 댓글 쓰기를 위한 구현
	public int rewrite(ReplyVO reply) {
		
		return rm.rewrite(reply);
	}
	
	public ArrayList<ReplyVO> list(int bno){
		return rm.list(bno);
	}
	//댓글 수정을 위한 구현
	public int modify(ReplyVO reply) {
		return rm.modify(reply);
	}
	
	public int remove(int rno) {
		return rm.remove(rno);
	}
}
