package org.wow.model;

public class ReplyVO {
	//댓글번호
	private int rno;
	//댓글내용
	private String reply;
	//ID
	private String id;
	//댓글작성일
	private String replydate;
	//게시판번호
	private int bno;
	
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReplydate() {
		return replydate;
	}
	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	@Override
	public String toString() {
		return "ReplyVO [rno=" + rno + ", reply=" + reply + ", id=" + id + ", replydate=" + replydate + ", bno=" + bno
				+ "]";
	}
	
	
}
