package org.gitar.model;

public class MemberVO {
	private String user_email;
	private String user_password;
	private String user_firstname;
	private String user_lastname;
	
	
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_firstname() {
		return user_firstname;
	}
	public void setUser_firstname(String user_firstname) {
		this.user_firstname = user_firstname;
	}
	public String getUser_lastname() {
		return user_lastname;
	}
	public void setUser_lastname(String user_lastname) {
		this.user_lastname = user_lastname;
	}
	
	
	
	@Override
	public String toString() {
		return "MemberVO [user_email=" + user_email + ", user_password=" + user_password + ", user_firstname="
				+ user_firstname + ", user_lastname=" + user_lastname + "]";
	}


}
