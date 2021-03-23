package ga.bowwow.service.store;

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
public class Inquiry {
	private int inquiry_no;				// 문의글 번호
	private int p_id;					// 문의할 상품 번호
	private int member_serial;			// 회원 번호
	private String inq_title;			// 문의글 제목
	private String inq_content;			// 문의글 내용
	private String inq_image;			// 문의글 첨부 이미지
	private String inq_regdate;			// 문의글 작성 날짜
	private String inq_maincategory;	// 문의글 대분류
	private String inq_subcategory;		// 문의글 중분류
	private String inq_inquiry_type;	// 문의글 소분류
}
