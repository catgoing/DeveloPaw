package ga.bowwow.store;

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
public class Response {
	private int member_serial;		// 문의 남긴 회원 번호
	private int inquiry_no;			// 답변 남길 문의 번호
	private int p_id;				// 문의 들어온 상품 번호
	private int res_id;				// 답변 번호
	private String res_content;		// 답변 내용
	private String res_date;		// 답변 작성 날짜
}
