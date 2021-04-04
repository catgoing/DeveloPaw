package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.CartList;
import ga.bowwow.service.store.CartListService;

@Service
public class CartListServiceImpl implements CartListService {
	
	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public void addCartList(CartList cartList) {
		storeDAO.addCart(cartList);
	}

	@Override
	public List<CartList> getCartList(String id) {
		return storeDAO.getCartList(id);
	}

	@Override
	public int cartCheck(CartList cartList) {
		return storeDAO.cartCheck(cartList);
	}

	@Override
	public int deleteCart(CartList cartList) {
		return storeDAO.deleteCart(cartList);
	}

	
	

}
