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
public class OrderDetail {

	private int orderdetail_id;
	private int order_id;
	private int p_id;
	private String p_name;
	private int amount;
	private int sum;
	private int price;
}
