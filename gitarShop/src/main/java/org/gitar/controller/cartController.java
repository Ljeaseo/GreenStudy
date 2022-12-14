package org.gitar.controller;

import org.gitar.model.cartVO;
import org.gitar.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class cartController {
	
	@Autowired
	CartService CTS;

	    // 장바구니 
		@RequestMapping(value="/cartin/new",method = RequestMethod.POST)
		public ResponseEntity<String>cartin(@RequestBody cartVO carttvo){
			
			int result=CTS.cartin(carttvo);
			
			return result ==1?new ResponseEntity<>("SUCCESS",HttpStatus.OK) 
					: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
			
		}
		
		// 장바구니 삭제
		@RequestMapping(value = "/cartin/remove/{cart_cnt}", method =  RequestMethod.DELETE)
		public ResponseEntity<String> cartremove(@PathVariable int cart_cnt){
			
			int result = CTS.cartremove(cart_cnt);
			
			return result==1? new ResponseEntity<>("success",HttpStatus.OK)
					: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
			
		}
		
		
	
}
