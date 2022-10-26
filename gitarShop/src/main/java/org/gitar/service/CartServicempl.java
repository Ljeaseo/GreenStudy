package org.gitar.service;

import java.util.ArrayList;

import org.gitar.mapper.CartMapper;
import org.gitar.model.cartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServicempl implements CartService{

	@Autowired
	CartMapper CTM;
	
	public int cartin(cartVO cartvo) {
		return CTM.cartin(cartvo);
	}
	
	public ArrayList<cartVO> cartlist(cartVO cartvo){
		return CTM.cartlist(cartvo);
	}
	
	public int cartremove(int cart_cnt) {
		return CTM.cartremove(cart_cnt);
	}
	
}
