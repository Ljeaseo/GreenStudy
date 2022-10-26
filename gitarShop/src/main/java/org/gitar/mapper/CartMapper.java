package org.gitar.mapper;

import java.util.ArrayList;

import org.gitar.model.cartVO;

public interface CartMapper {

	public int cartin(cartVO cartvo);
	
	public ArrayList<cartVO> cartlist(cartVO cartvo);
	
	public int cartremove(int cart_cnt);
}
