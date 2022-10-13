package org.gitar.controller;


import javax.servlet.http.HttpSession;


import org.gitar.model.MemberVO;
import org.gitar.model.guitarlistVO;
import org.gitar.service.GuitarService;
import org.gitar.service.MainpageService;
import org.gitar.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class mainpageController {
	
	@Autowired
	MemberService MS;
	
	@Autowired
	MainpageService MPS;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainpage (Model model, guitarlistVO guitarlistvo) {
	
		model.addAttribute("GSline", MPS.GSline(guitarlistvo));
		
		model.addAttribute("GSXline", MPS.GSXline(guitarlistvo));	
		return "mainpage/mainpage";
		
	}
	
	
	@PostMapping("/")	
	public String login(MemberVO member, HttpSession session,RedirectAttributes rttr) {
		boolean result = MS.login(member,session);
		System.out.println("result="+result);
		if(result){
			System.out.println("로그인성공");
			
			rttr.addFlashAttribute("msg", "success");
			return "mainpage/mainpage";
		}else{
			System.out.println("로그인 실패");
			rttr.addFlashAttribute("msg","fail");
			return "mainpage/mainpage";
		}
	}	
	
	
	@GetMapping("/logout")
	public String getLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}
