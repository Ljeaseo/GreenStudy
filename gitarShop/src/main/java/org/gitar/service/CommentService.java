package org.gitar.service;

import java.util.ArrayList;

import org.gitar.model.CriteriaVO;
import org.gitar.model.commentVO;
import org.gitar.model.qnaCriteriaVO;
import org.gitar.model.qnaVO;

public interface CommentService {

	//후기 쓰기
	public int commemtwrite(commentVO commentvo);
	//qna 쓰기
	public int qnawrite(qnaVO qnavo);
	
	
	public ArrayList<commentVO> comment(CriteriaVO cri);
	public ArrayList<qnaVO> qna(qnaCriteriaVO qcri);
	
	public int total(CriteriaVO cri);
	public int qtotal(qnaCriteriaVO qcri);
	
	public int commentremove(int commemt_cno);
	public int qnaremove(int qna_qno);
	
}
