package org.gitar.service;

import java.util.ArrayList;

import org.gitar.mapper.CommentMapper;
import org.gitar.model.commentVO;
import org.gitar.model.qnaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServicempl implements CommentService{

	@Autowired
	CommentMapper CM;
	
	public ArrayList<commentVO> comment(commentVO commentvo){
		return CM.comment(commentvo);
	}
	public ArrayList<qnaVO> qna(qnaVO qnavo){
		return CM.qna(qnavo);
	}	
}
