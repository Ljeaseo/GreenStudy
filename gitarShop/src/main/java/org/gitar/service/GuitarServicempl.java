package org.gitar.service;

import org.gitar.mapper.GuitarlistMapper;
import org.gitar.model.guitarlistVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GuitarServicempl implements GuitarService{
	
	@Autowired
	private GuitarlistMapper glm;
	
	@Override
	public guitarlistVO FG3(int guitar_no) {
		
		guitarlistVO FG3info = glm.FG3(guitar_no);
		
		return FG3info;
		
	}
}
