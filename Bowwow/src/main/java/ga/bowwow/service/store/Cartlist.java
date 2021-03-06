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
public class Cartlist {
	private int cart_id;			// 장바구니 번호
	private int member_serial;		// 회원 번호
	private int p_id;				// 상품 번호
	private int amount;				// 장바구니에 담긴 수량
}
