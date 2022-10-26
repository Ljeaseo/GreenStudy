package org.gitar.controller;






import org.gitar.model.CriteriaVO;

import org.gitar.model.PageVO;
import org.gitar.model.cartVO;
import org.gitar.model.qnaCriteriaVO;
import org.gitar.model.qnaPageVO;
import org.gitar.service.CartService;
import org.gitar.service.CommentService;
import org.gitar.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;





@Controller
public class guitardetailController {

	@Autowired
	CommentService CS;
	
	
	@Autowired
	MemberService MS;
	
	@Autowired
	CartService CTS;
	
	@RequestMapping(value = "/FG3", method = RequestMethod.GET)
	public String FG3(Model model,  CriteriaVO cri, qnaCriteriaVO qcri, cartVO cartvo) {
		
		model.addAttribute("comment", CS.comment(cri));
		model.addAttribute("qna", CS.qna(qcri));
		model.addAttribute("cartlist", CTS.cartlist(cartvo));
		
		
		int total = CS.total(cri);
		int qtotal = CS.qtotal(qcri);
		
		model.addAttribute("paging", new PageVO(cri, total));
		model.addAttribute("qnapaging", new qnaPageVO(qcri, qtotal));
		
		return "guitardetail/FG3";
	}

		
	
	@RequestMapping(value = "/FGX3", method = RequestMethod.GET)
	public String FGX3 (Model model,  CriteriaVO cri, qnaCriteriaVO qcri) {
		
		model.addAttribute("comment", CS.comment(cri));
		model.addAttribute("qna", CS.qna(qcri));
		
		int total = CS.total(cri);
		int qtotal = CS.qtotal(qcri);
		
		model.addAttribute("paging", new PageVO(cri, total));
		model.addAttribute("qnapaging", new qnaPageVO(qcri, qtotal));
		
		return "guitardetail/FGX3";
	}
	
	@RequestMapping(value = "/FG5", method = RequestMethod.GET)
	public String FG5 (Model model,  CriteriaVO cri, qnaCriteriaVO qcri) {
		
		model.addAttribute("comment", CS.comment(cri));
		model.addAttribute("qna", CS.qna(qcri));
		
		int total = CS.total(cri);
		int qtotal = CS.qtotal(qcri);
		
		model.addAttribute("paging", new PageVO(cri, total));
		model.addAttribute("qnapaging", new qnaPageVO(qcri, qtotal));
		
		return "guitardetail/FG5";
	}
	
	@RequestMapping(value = "/FGX5", method = RequestMethod.GET)
	public String FGX5 (Model model,  CriteriaVO cri, qnaCriteriaVO qcri) {
		
		
		model.addAttribute("comment", CS.comment(cri));
		model.addAttribute("qna", CS.qna(qcri));
		
		int total = CS.total(cri);
		int qtotal = CS.qtotal(qcri);
		
		model.addAttribute("paging", new PageVO(cri, total));
		model.addAttribute("qnapaging", new qnaPageVO(qcri, qtotal));
		
		return "guitardetail/FGX5";
	}
	
	@RequestMapping(value = "/FS3", method = RequestMethod.GET)
	public String FS3 (Model model,  CriteriaVO cri, qnaCriteriaVO qcri) {
		
		model.addAttribute("comment", CS.comment(cri));
		model.addAttribute("qna", CS.qna(qcri));
		
		int total = CS.total(cri);
		int qtotal = CS.qtotal(qcri);
		
		model.addAttribute("paging", new PageVO(cri, total));
		model.addAttribute("qnapaging", new qnaPageVO(qcri, qtotal));
		
		return "guitardetail/FS3";
	}
	
	@RequestMapping(value = "/FSX3", method = RequestMethod.GET)
	public String FSX3 (Model model,  CriteriaVO cri, qnaCriteriaVO qcri) {
		
		model.addAttribute("comment", CS.comment(cri));
		model.addAttribute("qna", CS.qna(qcri));
		
		int total = CS.total(cri);
		int qtotal = CS.qtotal(qcri);
		
		model.addAttribute("paging", new PageVO(cri, total));
		model.addAttribute("qnapaging", new qnaPageVO(qcri, qtotal));
		
		return "guitardetail/FSX3";
	}
	
	@RequestMapping(value = "/FS5", method = RequestMethod.GET)
	public String FS5 (Model model,  CriteriaVO cri, qnaCriteriaVO qcri) {
		
		model.addAttribute("comment", CS.comment(cri));
		model.addAttribute("qna", CS.qna(qcri));
		
		int total = CS.total(cri);
		int qtotal = CS.qtotal(qcri);
		
		model.addAttribute("paging", new PageVO(cri, total));
		model.addAttribute("qnapaging", new qnaPageVO(qcri, qtotal));
		
		return "guitardetail/FS5";
	}
	
	@RequestMapping(value = "/FSX5", method = RequestMethod.GET)
	public String FSX5 (Model model,  CriteriaVO cri, qnaCriteriaVO qcri) {
		
		model.addAttribute("comment", CS.comment(cri));
		model.addAttribute("qna", CS.qna(qcri));
		
		int total = CS.total(cri);
		int qtotal = CS.qtotal(qcri);
		
		model.addAttribute("paging", new PageVO(cri, total));
		model.addAttribute("qnapaging", new qnaPageVO(qcri, qtotal));
		
		return "guitardetail/FSX5";
	}
	
}
