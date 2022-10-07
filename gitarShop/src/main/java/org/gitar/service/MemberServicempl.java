package org.gitar.service;

import javax.servlet.http.HttpSession;


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
	
	@Override
	public boolean login(MemberVO member, HttpSession session) {
		
			MemberVO login = MM.login(member);
			boolean result = false;
			
			if(login!=null) {
				System.out.println("세션 값");
				session.setAttribute("login", login);
				System.out.println("세션 값="+session.getAttribute("login"));
				result=true;
			}
			return result;
	}
}
