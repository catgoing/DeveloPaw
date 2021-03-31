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
public class CartList {
	private int cart_id;			// 장바구니 번호
	private String id;				// 회원 아이디
	private int p_id;				// 상품 번호
	private int amount;				// 장바구니에 담긴 수량
	
	private String p_name;			// 상품이름
	private int price;				// 가격
	private String s_image;			// 상품 이미지
}
