package ga.bowwow.service.store;

import java.util.List;

public interface CartListService {
	
	public void addCartList(CartList cartList);
	public List<CartList> getCartList(String id);
	public List<CartList> pIdCheck(String id);
	
}
