package org.wow.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wow.mapper.BoardMapper;
import org.wow.model.BoardVo;

@Service
public class BoardServiceimpl implements BoardService {
	
	@Autowired
	BoardMapper bm;
	
	//BoardService에서 설계되어진 write추상메서드를 구현
    public void write(BoardVo board) {
		// BoardMapper에 있는 write메서드를 호출
    	// 메서드의 매개변수를 통해 BoardVo값을 BoardMapper의 write메서드로 전달
    	bm.write(board);
	}
}
