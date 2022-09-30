package org.gitar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class privacypolicyController {
	
	@RequestMapping(value = "/privacypolicy", method = RequestMethod.GET)
	public String privacypolicy () {
		
		
		return "privacypolicy/privacypolicy";
		
		
	}
}
