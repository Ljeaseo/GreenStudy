package org.wow.model;

public class PageVO {
	// 시작 번호
	private int startPage;
	// 끝 번호
	private int endPage;
	// 이전버튼 -> 조건에 따라 나타나고 안나타남
	private boolean prev;
	// 다음버튼 -> 조건에 따라 나타나고 안나타남
	private boolean next;
	
	//CriteriaVO 포함
	private CriteriaVO cri;
	// board 테이블의 전체건수를 저장
	private int total;
	
	public PageVO(CriteriaVO cri, int total) {
		this.cri=cri;
		this.total=total;
		
		//시작번호, 끝번호, 이전버튼, 다음버튼 계산
		// 끝번호 식 : 현재 페이지 / 10.0(실수로 나누어 주어야 올림가능) * 10
		this.endPage = (int) Math.ceil(cri.getPageNum()/10.0)*10;
		
		// 시작번호 식 : 끝번호 -9
		this.startPage = this.endPage -9;
	
		//제일 마지막 페이지 번호는 전체건수를 고려해야함.
		//제일 마지막 끝번호 식: 전체건수(올림)/페이지당 게시물 갯수
		
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
		
		//13(realEnd) < 20(endPage) 면 realEnd가 적용되게 함.
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		//startPage > 1 이면 이전버튼 활성화
		this.prev = this.startPage > 1;
		//endPage < realEnd 이면 버튼 비활성화
		this.next = this.endPage < realEnd; 
	}

	
	
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public CriteriaVO getCri() {
		return cri;
	}

	public void setCri(CriteriaVO cri) {
		this.cri = cri;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}



	@Override
	public String toString() {
		return "PageVO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", cri=" + cri + ", total=" + total + "]";
	}
	
	
	
}
