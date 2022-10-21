package org.gitar.mapper;

import java.util.ArrayList;

import org.gitar.model.CriteriaVO;
import org.gitar.model.commentVO;
import org.gitar.model.qnaCriteriaVO;
import org.gitar.model.qnaVO;

public interface CommentMapper {
	//후기, qna 작성
	public int commemtwrite(commentVO commentvo);
	public int qnawrite(qnaVO qnavo);
	
	
	public ArrayList<commentVO> comment(CriteriaVO cri);

	public ArrayList<qnaVO> qna(qnaCriteriaVO qcri);
	
	public int total(CriteriaVO cri);
	public int qtotal(qnaCriteriaVO qcri);
}
