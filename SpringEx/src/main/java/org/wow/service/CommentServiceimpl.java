package org.wow.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import org.wow.mapper.CommentMapper;

import org.wow.model.CommentVo;

public class CommentServiceimpl implements CommentService{
	@Autowired
	CommentMapper cm; 
	
		public ArrayList<CommentVo> comment() {
	    	return cm.comment();
	    }
}
