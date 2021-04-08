package ga.bowwow.service.board;


import lombok.Setter;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter

public class Board {
	
	private int board_no;			//게시글번호
	private int board_idx;			//게시판 종류
	private String board_title;		//게시글제목
	private String member_serial;	//회원번호
	private String nickname;		//회원번호
	private String id;				//회원번호
	private String goods;			//상품종류
	private String board_content;	//게시판 내용
	private String regdate;			//작성일
	private String hits;			//조회수
	private String area;			//지역
	private String price;			//가격
	private String is_selled;		//판매여부
	private String img1;			
	private String sub_class; 		//소분류
	private String animal_class; 	//동물분류
	
	private String keyword;
	private String img_locas;
	
	
//	public void setAnimal_class(String animal_class) {
//		if(animal_class.equals("1")) {
//			this.animal_class = "강아지"; 
//		}
//		else if(animal_class.equals("2")) {
//			this.animal_class = "고양이"; 
//		}
//		else if(animal_class.equals("3")) {
//			this.animal_class = "자유"; 
//		}
//	}

	public void setRegdate(String regdate) {
		this.regdate = regdate.substring(0, 16);
	}
	

	
}
