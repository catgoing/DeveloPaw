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
	private int goods;			//상품종류
	private String goods2;			//상품종류
	private String board_content;	//게시판 내용
	private String board_scontent;	//게시판 내용
	private String regdate;			//작성일
	private String hits;			//조회수
	private int area;			//지역
	private String area2;			//지역
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

	
	
	public void setBoard_content(String board_content) {
		setBoard_scontent(board_content);
		this.board_content = board_content;
	}
	
	public void setBoard_scontent(String board_scontent) {
		this.board_scontent = board_scontent.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"," ");
	}
	
	public void setArea(int area) {
		setArea2(area);
		this.area = area;
	}
	
	public void setArea2(int area) {
		switch (area) {
		case 0:
			this.area2 = "서울";
			break;
		case 1:
			this.area2 = "경기";
			break;
		case 2:
			this.area2 = "인천";
			break;
		case 3:
			this.area2 = "대구";
			break;
		case 4:
			this.area2 = "부산";
			break;
		case 5:
			this.area2 = "울산";
			break;
		case 6:
			this.area2 = "광주";
			break;
		case 7:
			this.area2 = "강원";
			break;
		case 8:
			this.area2 = "충북";
			break;
		case 9:
			this.area2 = "충남";
			break;
		case 10:
			this.area2 = "경북";
			break;
		case 11:
			this.area2 = "경남";
			break;
		case 12:
			this.area2 = "전북";
			break;
		case 13:
			this.area2 = "전남";
			break;
		case 14:
			this.area2 = "제주";
			break;
		}
		
	}
	
	public void setGoods(int goods) {
		setGoods2(goods);
		this.goods = goods;
	}
	
	public void setGoods2(int goods) {
		switch (goods) {
		case 0:
			this.area2 = "식품";
			break;
		case 1:
			this.area2 = "장난감";
			break;
		case 2:
			this.area2 = "의류";
			break;
		case 3:
			this.area2 = "생활용품";
			break;
		case 4:
			this.area2 = "기타";
			break;
		}
		
	}
	
}
