package org.gitar.controller;

import org.gitar.model.MemberVO;
import org.gitar.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class singupController {

	@Autowired
	MemberService MS;
	
	@RequestMapping(value = "/singup", method = RequestMethod.GET)
	public String singup () {
		
		return "member/singup";
		
	}
	
	 @RequestMapping (value = "/memberinfoPost", method = RequestMethod.POST)
		public String memberinfoPost (MemberVO member) {
			 MS.memberjoin(member);
			 return  "redirect:/";
	 }
	
}
