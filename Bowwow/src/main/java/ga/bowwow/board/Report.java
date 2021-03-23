package ga.bowwow.board;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor

public class Report {
	private String report_no;     	//신고번호
	private String board_class;	  	//게시판분류	 	
	private String board_no;		//게시글번호
	private String report_class;	//신고분류
	private String content;			//신고내용
	private String result;			//처리
	private String reporter_serial;	//신고자 회원번호
	private String accused_serial;	//작성자 회원번호
	private String comments_class;	//댓글 분류
	private String comments_no;		//댓글 번호
	
}
