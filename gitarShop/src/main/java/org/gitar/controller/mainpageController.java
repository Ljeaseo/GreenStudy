package org.gitar.controller;


import org.gitar.model.MemberVO;
import org.gitar.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mainpageController {
	
	@Autowired
	MemberService MS;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainpage () {
		
		return "mainpage/mainpage";
		
	}
	
	
	 @RequestMapping (value = "/", method = RequestMethod.POST)
		public String memberinfoPost (MemberVO member) {
			 MS.memberjoin(member);
			 return "mainpage/mainpage";
	}
}
