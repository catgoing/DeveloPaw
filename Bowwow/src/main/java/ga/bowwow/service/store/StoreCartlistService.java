package ga.bowwow.service.store;

import java.util.List;

public interface StoreCartlistService {
	public void insertCartlist(Cartlist cartlist);
	public void updateCartlist(Cartlist cartlist);
	public void deleteCartlist(int cart_id);	
	public List<Cartlist> getCartList(Cartlist cartlist);
}
