package org.gitar.model;
//pageNum과 amount(한페이지당 게시물 갯수) 값을 전달하는 Model
public class qnaCriteriaVO {
	private int qpageNum;  // 페이지번호
	private int qamount;   // 한 페이지당 게시물 갯수
	private String keyword;  // 키워드를 통해 검색
	private String qtype;  // 키워드 기준
	
	// 생성자
	public qnaCriteriaVO() {
		this(1,10);  // 컨트롤러에서pageNum은 1로, amount는 10으로 초기화		
	}
	public qnaCriteriaVO(int qpageNum, int qamount) {
		this.qpageNum = qpageNum;
		this.qamount = qamount;
	}
	public int getQpageNum() {
		return qpageNum;
	}
	public void setQpageNum(int qpageNum) {
		this.qpageNum = qpageNum;
	}
	public int getQamount() {
		return qamount;
	}
	public void setQamount(int qamount) {
		this.qamount = qamount;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getQtype() {
		return qtype;
	}
	public void setQtype(String qtype) {
		this.qtype = qtype;
	}
	@Override
	public String toString() {
		return "qnaCriteriaVO [qpageNum=" + qpageNum + ", qamount=" + qamount + ", keyword=" + keyword + ", qtype="
				+ qtype + "]";
	}
	
	
}
