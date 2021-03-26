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
public class Product {
	private int p_id;			// 상품 번호
	private String p_name;		// 상품 이름
	private String p_type;		// 댕댕이, 냥냥이
	private String p_category;  // 상품 종류
	private int price;			// 상품 가격
	private int stock;			// 상품 재고
	private String s_image;		// 미리보기 이미지
	private String l_image;		// 상세페이지 이미지
	private String p_pick;		// 상품 옵션

}
