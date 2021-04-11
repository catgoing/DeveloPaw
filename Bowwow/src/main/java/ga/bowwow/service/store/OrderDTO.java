package ga.bowwow.service.store;

import java.util.List;

import lombok.Data;

@Data
	private String id;
	private List<Integer> p_id;
	private List<Integer> amount;
	private List<String> p_name;
	private List<String> s_image;
	private List<Integer> price;
	private List<String> p_type;
}