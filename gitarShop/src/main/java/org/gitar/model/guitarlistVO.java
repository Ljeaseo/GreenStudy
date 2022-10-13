package org.gitar.model;

public class guitarlistVO {
	private int guitar_no;
	private String guitar_name;
	private int guitar_price;
	
	
	public int getGuitar_no() {
		return guitar_no;
	}
	public void setGuitar_no(int guitar_no) {
		this.guitar_no = guitar_no;
	}
	public String getGuitar_name() {
		return guitar_name;
	}
	public void setGuitar_name(String guitar_name) {
		this.guitar_name = guitar_name;
	}
	public int getGuitar_price() {
		return guitar_price;
	}
	public void setGuitar_price(int guitar_price) {
		this.guitar_price = guitar_price;
	}
	@Override
	public String toString() {
		return "guitarlistVO [guitar_no=" + guitar_no + ", guitar_name=" + guitar_name + ", guitar_price=" + guitar_price
				+ "]";
	}
	
	
}
