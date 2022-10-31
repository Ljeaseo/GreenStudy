package org.gitar.controller;


import javax.servlet.http.HttpSession;


import org.gitar.model.MemberVO;
import org.gitar.model.cartVO;
import org.gitar.model.guitarlistVO;
import org.gitar.service.CartService;
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
	
	@Autowired
	CartService CTS;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainpage (Model model, guitarlistVO guitarlistvo, cartVO cartvo) {
	
		model.addAttribute("GSline", MPS.GSline(guitarlistvo));
		
		model.addAttribute("GSXline", MPS.GSXline(guitarlistvo));	
		
		model.addAttribute("cartlist", CTS.cartlist(cartvo));
		
		return "mainpage/mainpage";
		
	}
	
	
	@PostMapping("/")	
	public String login(MemberVO member, HttpSession session,RedirectAttributes rttr) throws Exception {
		boolean result = MS.login(member,session);
		System.out.println("result="+result);
		if(result){
			System.out.println("로그인성공");
			
			rttr.addFlashAttribute("msg", "success");
			return "redirect:/";
		}else{
			System.out.println("로그인 실패");
			rttr.addFlashAttribute("msg","fail");
			return "redirect:/";
		}
	}	
	
	
	@GetMapping("/logout")
	public String getLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}
