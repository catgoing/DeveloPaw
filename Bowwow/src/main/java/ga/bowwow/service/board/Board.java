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

public class Board {
	
	private String board_no;		//게시판번호
	private String board_title;		//게시판제목
	private String member_serial;	//회원번호
	private String id;	//회원번호
	private String goods;			//상품종류
	private String board_content;	//게시판 내용
	private String regdate;			//작성일
	private String hits;			//조회수
	private String area;			//지역
	private String price;			//가격
	private String is_selled;		//판매여부
	private String img1;			
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String img6;
	private String img7;
	private String img8;
	private String img9;
	private String img0;
	private String animal_class; 	//동물분류
	
	
	
}
