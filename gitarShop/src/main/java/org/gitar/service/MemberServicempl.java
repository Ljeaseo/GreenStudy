package org.gitar.service;

import org.gitar.mapper.MemberMapper;
import org.gitar.model.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServicempl implements MemberService{
 
	@Autowired
	MemberMapper MM;
	
	@Override
	public void memberjoin (MemberVO member){ 
		MM.memberjoin(member);
	}
}
