package ga.bowwow.service.userpage;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Component
public class MyInquiry {
	
	private int inquiry_serial;		//문의번호
	private int member_serial;			//유저번호
	private String nickname;			//닉네임
	private String inquiry_title;		//문의 제목
	private String inquiry_content;		//문의사항내용
	private String inquiry_writedate;	//문의날짜
	private String inquiry_type;		//문의유형(이용문의, 구매문의, 배송문의, 기타문의)

	private int p_id;					//상품문의 할 때?
	
	//답변이 있는지 확인 ?? 
	private String have_answer;
	
	//타입으로 검색할때 사용
	private String typeSelect;
	
	//AdminInquiry
	//JOIN해 온 것 받기
	private int inquiry_re_serial;		//문의답변번호
	//private int inquiry_serial;		//(유저가 작성한)문의번호
	private String inquiry_re_content;	//답변내용
	private String inquiry_re_date;		//답변날짜
	private String admin_name;			//관리자이름
	
}