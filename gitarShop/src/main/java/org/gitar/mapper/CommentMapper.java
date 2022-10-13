package org.gitar.mapper;

import java.util.ArrayList;

import org.gitar.model.commentVO;
import org.gitar.model.qnaVO;

public interface CommentMapper {

	public ArrayList<commentVO> comment(commentVO commentvo);

	public ArrayList<qnaVO> qna(qnaVO qnavo);
}
