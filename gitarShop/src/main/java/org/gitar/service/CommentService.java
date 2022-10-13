package org.gitar.service;

import java.util.ArrayList;

import org.gitar.model.commentVO;
import org.gitar.model.qnaVO;

public interface CommentService {

	public ArrayList<commentVO> comment(commentVO commentvo);

	public ArrayList<qnaVO> qna(qnaVO qnavo);
	
}
