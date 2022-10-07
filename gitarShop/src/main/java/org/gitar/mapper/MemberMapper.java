package org.gitar.mapper;

import org.gitar.model.MemberVO;

public interface MemberMapper {
	//회원가입
	public void memberjoin(MemberVO member);
	
	
	//로그인
	public MemberVO login(MemberVO member);
}
 