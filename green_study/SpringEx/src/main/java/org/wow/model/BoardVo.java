package org.wow.model;

public class BoardVo {
	//게시판 번호 bno
	private int bno;
	//제목 title
	private String title;
	//내용 content
	private String content;
	//작성일 regdate
	private String regdate;
	//조회수 cnt
	private int cnt;
	//아이디 id
	private String id;
		
	//getter&setter메소드 -> Source 'create getter setter'
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	//Source 'create toString'
	@Override
	public String toString() {
		return "BoardVo [bno=" + bno + ", title=" + title + ", content=" + content + ", regdate=" + regdate + ", cnt="
				+ cnt + ", id=" + id + "]";
	}
	
	
	
}
