package org.gitar.model;

public class basketVO {
	private String user_email;
	
	private int guitar_no;

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public int getGuitar_no() {
		return guitar_no;
	}

	public void setGuitar_no(int guitar_no) {
		this.guitar_no = guitar_no;
	}

	@Override
	public String toString() {
		return "basketVO [user_email=" + user_email + ", guitar_no=" + guitar_no + "]";	
	}
	
	
}
