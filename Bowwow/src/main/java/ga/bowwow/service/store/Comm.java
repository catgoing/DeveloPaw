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
public class Comm {
	private int review_id;			// 댓글 남길 후기 번호
	private int p_id;				// 후기와 연결된 상품 번호
	private int member_serial;		// 회원 번호
	private int comm_id;			// 댓글 번호
	private String comm_content;	// 댓글 내용
	private String comm_regdate;	// 댓글 작성 날짜
}
