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
public class Order {
	private int order_id;			// 주문 번호
	private int p_id;				// 주문한 상품 번호
	private int member_serial;		// 회원 번호
	private int amount;				// 주문한 상품 수량
	private int price;				// 주문한 총 금액
	private String memo;			// 배송 관련 메모
	private String order_date;		// 주문 날짜
	private String order_status;	// 주문 진행 상황
}
