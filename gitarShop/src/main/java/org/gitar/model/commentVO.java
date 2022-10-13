package org.gitar.model;

public class commentVO {

	private int guitar_no;
	private String user_email;
	private int commemt_cno;
	private String commemt_content;
	private String commemt_regdate;
	
	
	public int getGuitar_no() {
		return guitar_no;
	}
	public void setGuitar_no(int guitar_no) {
		this.guitar_no = guitar_no;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public int getCommemt_cno() {
		return commemt_cno;
	}
	public void setComment_cno(int commemt_cno) {
		this.commemt_cno = commemt_cno;
	}
	public String getCommemt_content() {
		return commemt_content;
	}
	public void setCommemt_content(String commemt_content) {
		this.commemt_content = commemt_content;
	}
	public String getCommemt_regdate() {
		return commemt_regdate;
	}
	public void setCommemt_regdate(String commemt_regdate) {
		this.commemt_regdate = commemt_regdate;
	}
	@Override
	public String toString() {
		return "commentVO [guitar_no=" + guitar_no + ", user_email=" + user_email + ", commemt_cno=" + commemt_cno
				+ ", commemt_content=" + commemt_content + ", commemt_regdate=" + commemt_regdate + "]";
	}
	
	
	
}
