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
public class Review {
	private int review_id;				// 후기 번호
	private int p_id;					// 후기 남길 상품 번호
	private int member_serial;			// 회원 번호
	private String review_title;		// 후기 제목
	private String review_content;		// 후기 내용
	private String review_regdate;		// 후기 작성 날짜
	private String review_image;		// 후기 이미지
	
	private String nickname;			// 닉네임
}
