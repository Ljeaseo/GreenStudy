package org.gitar.mapper;

import java.util.ArrayList;

import org.gitar.model.guitarlistVO;

public interface MainpageMapper {
	
	//GS기타 목록을 불러올 DB작업 설계
	public ArrayList<guitarlistVO> GSline(guitarlistVO giutarlistvo);
	
	//GSX기타 목록을 불러올 DB작업 설계
	public ArrayList<guitarlistVO> GSXline(guitarlistVO giutarlistvo);
	
}
