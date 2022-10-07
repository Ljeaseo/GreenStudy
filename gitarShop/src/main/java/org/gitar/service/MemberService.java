package org.gitar.service;


import javax.servlet.http.HttpSession;

import org.gitar.model.MemberVO;

public interface MemberService {

	// 회원가입
		public void memberjoin(MemberVO member);
	// 로그인
		public boolean login(MemberVO member, HttpSession session);
}
