package org.gitar.service;

import java.util.ArrayList;

import org.gitar.mapper.MainpageMapper;
import org.gitar.model.guitarlistVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainpageServicempl implements MainpageService{
	
	@Autowired
	MainpageMapper MPM;
	
	public ArrayList<guitarlistVO> GSline(guitarlistVO guitarlistvo) {
		return MPM.GSline(guitarlistvo);
	}
	
	public ArrayList<guitarlistVO> GSXline(guitarlistVO guitarlistvo) {
		return MPM.GSXline(guitarlistvo);
	}
}
