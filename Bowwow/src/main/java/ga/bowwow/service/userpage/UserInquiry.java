package ga.bowwow.service.userpage;

import java.io.Serializable;

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
public class UserInquiry {
	
	private int inquiry_serial;		//문의번호
	private int member_serial;			//유저번호
	private String nickname;			//닉네임
	private String inquiry_title;		//문의 제목
	private String inquiry_content;		//문의사항내용
	private String inquiry_writedate;	//문의날짜
	private String inquiry_type;		//문의유형(이용문의, 구매문의, 배송문의, 기타문의)
	
	//답변이 있는지 확인 ?? 
	private String have_answer;
	
	//AdminInquiry
	//JOIN해 온 것 받기 _ 
	private int u_serial;
	private int a_serial;
	private int inquiry_re_serial;		//문의답변번호
	//private int inquiry_serial;		//(유저가 작성한)문의번호
	private String inquiry_re_content;	//답변내용
	private String inquiry_re_date;		//답변날짜
	private String admin_name;			//관리자이름
	
}