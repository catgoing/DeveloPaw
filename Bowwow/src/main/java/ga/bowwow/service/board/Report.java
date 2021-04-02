package ga.bowwow.service.board;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class Report {
	private int report_no;     		//신고번호
	private String board_class;	  	//게시판분류	 	
	private String board_no;		//게시글번호
	private String report_class;	//신고분류
	private String content;			//신고내용
	private String result;			//처리
	private String reporter_serial;	//신고자 회원번호
	private String accused_serial;	//작성자 회원번호
	private String comments_class;	//댓글 분류
	private String comments_no;		//댓글 번호
	private String report_date;		//신고일
	private String handled_date;	//처리일
	private String report_content;	//제목 또는 내용
	
	
	
	public String getBoard_class() {
		return this.board_class;
	}
	
	public void setBoard_class(String board_class) {
		if(board_class.equals("1")) {
			this.board_class = "펫 다이어리";
		} 
		else if(board_class.equals("2")) {
			this.board_class = "펫 소개";
		}
		else if(board_class.equals("3")) {
			this.board_class = "노하우";
		}
		else if(board_class.equals("4")) {
			this.board_class = "분실";
		}
		else if(board_class.equals("5")) {
			this.board_class = "중고거래";
		}
	}
	
	public String getReport_class() {
		return this.report_class;
	}
	
	public void setReport_class(String report_class) {
		if(report_class.equals("1")) {
			this.report_class = "욕설, 비하성 발언";
		} 
		else if(report_class.equals("2")) {
			this.report_class = "저작권 침해 및 불법 자료 유출";
		}
		else if(report_class.equals("3")) {
			this.report_class = "도배성 게시물";
		}
		else if(report_class.equals("4")) {
			this.report_class = "불법 광고 및 홍보";
		}
		else if(report_class.equals("5")) {
			this.report_class = "기타";
		}
	}
	
	public String getResult() {
		return this.result;
	}
	
	public void setResult(String result) {
		if(result.equals("1")) {
			this.result = "미처리";
		} 
		else if(result.equals("2")) {
			this.result = "처리완료";
		}
	}
	
}
