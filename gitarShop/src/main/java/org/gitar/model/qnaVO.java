package org.gitar.model;

public class qnaVO {
	
	private int guitar_no;
	private String user_email;
	private int qna_qno;
	private String qna_content;
	private String qna_regdate;
	
	
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
	public int getQna_qno() {
		return qna_qno;
	}
	public void setQna_qno(int qna_qno) {
		this.qna_qno = qna_qno;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_regdate() {
		return qna_regdate;
	}
	public void setQna_regdate(String qna_regdate) {
		this.qna_regdate = qna_regdate;
	}
	
	
	@Override
	public String toString() {
		return "qnaVO [guitar_no=" + guitar_no + ", user_email=" + user_email + ", qna_qno=" + qna_qno
				+ ", qna_content=" + qna_content + ", qna_regdate=" + qna_regdate + "]";
	}
	
	
	
}
