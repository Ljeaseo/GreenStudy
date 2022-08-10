package org.wow.service;



import java.util.ArrayList;

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
    
    //BoardService에서 설계되어진 list추상메서드를 구현
    public ArrayList<BoardVo> list() {
    	return bm.list();
    }
  //BoardService에서 설계되어진 detail추상메서드를 구현
    public BoardVo detail(BoardVo board) {
    	return bm.detail(board);
    }
    
    public void modify(BoardVo board) {
    	bm.modify(board);
    }
    
    public void remove(BoardVo board) {
    	bm.remove(board);
    }

}
