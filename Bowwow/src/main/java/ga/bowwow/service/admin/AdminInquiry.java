package ga.bowwow.service.admin;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Component
public class AdminInquiry {
	
	private int inquiry_re_serial;		//문의답변번호
	private int inquiry_serial;		//(유저가 작성한)문의번호
	private String inquiry_re_content;	//답변내용
	private String inquiry_re_date;		//답변날짜
	private String admin_name;			//관리자이름
	
}
