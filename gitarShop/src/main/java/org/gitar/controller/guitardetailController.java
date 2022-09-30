package org.gitar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class guitardetailController {

	@RequestMapping(value = "/FG3", method = RequestMethod.GET)
	public String FG3 () {
		
		return "guitardetail/FG3";
	}
	
	@RequestMapping(value = "/FGX3", method = RequestMethod.GET)
	public String FGX3 () {
		
		return "guitardetail/FGX3";
	}
	
	@RequestMapping(value = "/FG5", method = RequestMethod.GET)
	public String FG5 () {
		
		return "guitardetail/FG5";
	}
	
	@RequestMapping(value = "/FGX5", method = RequestMethod.GET)
	public String FGX5 () {
		
		return "guitardetail/FGX5";
	}
	
	@RequestMapping(value = "/FS3", method = RequestMethod.GET)
	public String FS3 () {
		
		return "guitardetail/FS3";
	}
	
	@RequestMapping(value = "/FSX3", method = RequestMethod.GET)
	public String FSX3 () {
		
		return "guitardetail/FSX3";
	}
	
	@RequestMapping(value = "/FS5", method = RequestMethod.GET)
	public String FS5 () {
		
		return "guitardetail/FS5";
	}
	
	@RequestMapping(value = "/FSX5", method = RequestMethod.GET)
	public String FSX5 () {
		
		return "guitardetail/FSX5";
	}
	
}
