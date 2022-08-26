package org.wow.service;



import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.wow.mapper.BoardAttachMapper;
import org.wow.mapper.BoardMapper;
import org.wow.model.AttachFileVO;
import org.wow.model.BoardVo;
import org.wow.model.CriteriaVO;

@Service
public class BoardServiceimpl implements BoardService {
	
	@Autowired
	BoardMapper bm;// board 테이블mapper
	@Autowired
	BoardAttachMapper bam;
	
	//BoardService에서 설계되어진 write추상메서드를 구현
    @Override
	public void write(BoardVo board) {
		// BoardMapper에 있는 write메서드를 호출
    	// 메서드의 매개변수를 통해 BoardVo값을 BoardMapper의 write메서드로 전달
    	bm.write(board);
    	board.getAttach().forEach(attach -> {
    		
    		//AttachFileVO의 bno에 BoardVO의 bno를 저장해라
    		attach.setBno(board.getBno());
    		
    		bam.insert(attach);
    	});
    		
	}
    
    //BoardService에서 설계되어진 list추상메서드를 구현
    public ArrayList<BoardVo> list() {
    	return bm.list(null);
    }
  //BoardService에서 설계되어진 detail추상메서드를 구현
    @Override
    @Transactional
	public BoardVo detail(BoardVo board) {
    	// 상세페이지 조회 할 때
    	// 조회수 + 1 update
    	bm.cntup(board);
    	return bm.detail(board);
    }
    
    @Override
	public void modify(BoardVo board) {
    	bm.modify(board);
    }
    
    @Override
	public void remove(BoardVo board) {
    	bm.remove(board);
    }

	@Override
	public ArrayList<BoardVo> list(CriteriaVO cri) {
		// TODO Auto-generated method stub
		return bm.list(cri);
	}
	public int total(CriteriaVO cri) {
		return bm.total(cri);
	}
	// 첨부파일 조회 설계
	public ArrayList<AttachFileVO> attachlist(int bno){
		return bam.attachlist(bno);
	}
}











