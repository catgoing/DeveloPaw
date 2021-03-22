package ga.bowwow.board;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Comments {
	
	private String comment_no;		//댓글 번호	
	private String comment_no2;		//대댓글 번호
	private String member_serial;	//회원 번호
	private String board_no;		//게시판 번호
	private String comment_content;	//댓글 내용
	private String regdate;			//작성일
	

}
