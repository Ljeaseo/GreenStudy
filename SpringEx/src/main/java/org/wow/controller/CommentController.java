package org.wow.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.wow.service.CommentService;

@Controller
public class CommentController {
	@Autowired
	CommentService cs;
	
	@RequestMapping(value="/comment/commentwrite", method = RequestMethod.POST)
		public String comment() {
			return "board/boarddetail";
		}
	}

