package ga.bowwow.service.store;

import java.util.List;

public interface CartListService {
	
	public void addCartList(CartList cartList);
	public List<CartList> getCartList(String id);
	public int cartCheck(CartList cartList);
	public int updateCart(CartList cartList);
	public int deleteCart(CartList cartList);
	public void deleteCartAll(String id);
	public int OrderDelCart(Order order);
}
