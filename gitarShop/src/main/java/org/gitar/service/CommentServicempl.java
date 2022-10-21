package org.gitar.service;

import java.util.ArrayList;

import org.gitar.mapper.CommentMapper;
import org.gitar.model.CriteriaVO;
import org.gitar.model.commentVO;
import org.gitar.model.qnaCriteriaVO;
import org.gitar.model.qnaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServicempl implements CommentService{

	@Autowired
	CommentMapper CM;
	
	//후기쓰기	
	public int commemtwrite(commentVO commentvo) {
		
		return CM.commemtwrite(commentvo);
		
	}
	//qna 쓰기
	public int qnawrite(qnaVO qnavo) {
		
		return CM.qnawrite(qnavo);
		
	}
	
	
	public ArrayList<commentVO> comment(CriteriaVO cri){
		return CM.comment(cri);
	}
	public ArrayList<qnaVO> qna(qnaCriteriaVO qcri){
		return CM.qna(qcri);
	}	
	
	public int total(CriteriaVO cri) {
		return CM.total(cri);
	}
	
	public int qtotal(qnaCriteriaVO qcri) {
		return CM.qtotal(qcri);
	}
}
