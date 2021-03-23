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
public class Products {
	private int p_id;
	private String p_name;
	private String p_type;
	private String p_category;
	private int price;
	private int stock;
	private String s_image;
	private String l_image;
	private String p_pick;

}
