package org.gitar.model;

import org.gitar.model.qnaCriteriaVO;

public class qnaPageVO {
	
	// 시작 번호
		private int qstartPage;
		// 끝 번호
		private int qendPage;
		// 이전 버튼
		private boolean qprev;
		// 다음 버튼
		private boolean qnext;
		// CriteriaVO 포함
		private qnaCriteriaVO qcri;
		// board 테이블의 전체건수를 저장
		private int qtotal;
		
		public qnaPageVO(qnaCriteriaVO qcri, int qtotal) {
			this.qcri = qcri;
			this.qtotal = qtotal;
			
			// 시작번호, 끝번호, 이전버튼, 다음버튼 계산
			// 끝번호 식: {현재 페이지 / 10 (올림)} * 10
			this.qendPage = (int)Math.ceil(qcri.getQpageNum() / 10.0) * 10;		
			// 시작번호 식: 끝번호 - 9
			this.qstartPage = this.qendPage - 9;

			
			// 제일 마지막 페이지 번호는 전체건수를 고려해야함 
			// 제일 마지막 끝번호 식: {전체건수 (올림)} / 페이지당 게시물 갯수
			//                        123 * 1.0 = 123.0 / 10
			//                                    12.3(올림) => 13
			int qrealEnd = (int)(Math.ceil((qtotal * 1.0)/qcri.getQamount()));
			
			// 13(realEnd) < 20(endPage) 면
			// realEnd가 적용되게 함
			if(qrealEnd < this.qendPage) {
				this.qendPage=qrealEnd;
			}
			
			// 이전버튼
			// startPage가 1보다 크면 이전버튼 활성화
			this.qprev = this.qstartPage > 1;
			
			// 다음버튼
			// endPage가 realEnd 보다 작으면 다음버튼 활성화
			this.qnext = this.qendPage < qrealEnd;
		
		}

		public int getQstartPage() {
			return qstartPage;
		}

		public void setQstartPage(int qstartPage) {
			this.qstartPage = qstartPage;
		}

		public int getQendPage() {
			return qendPage;
		}

		public void setQendPage(int qendPage) {
			this.qendPage = qendPage;
		}

		public boolean isQprev() {
			return qprev;
		}

		public void setQprev(boolean qprev) {
			this.qprev = qprev;
		}

		public boolean isQnext() {
			return qnext;
		}

		public void setQnext(boolean qnext) {
			this.qnext = qnext;
		}

		public qnaCriteriaVO getQcri() {
			return qcri;
		}

		public void setQcri(qnaCriteriaVO qcri) {
			this.qcri = qcri;
		}

		public int getQtotal() {
			return qtotal;
		}

		public void setQtotal(int qtotal) {
			this.qtotal = qtotal;
		}

		@Override
		public String toString() {
			return "qnaPageVO [qstartPage=" + qstartPage + ", qendPage=" + qendPage + ", qprev=" + qprev + ", qnext="
					+ qnext + ", qcri=" + qcri + ", qtotal=" + qtotal + "]";
		}

		
}
