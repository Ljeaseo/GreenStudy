package org.gitar.service;

import java.util.ArrayList;

import org.gitar.model.cartVO;

public interface CartService {

	public int cartin(cartVO cartvo);
	
	public ArrayList<cartVO> cartlist(cartVO cartvo);
	
	public int cartremove(int cart_cnt);
	
}
