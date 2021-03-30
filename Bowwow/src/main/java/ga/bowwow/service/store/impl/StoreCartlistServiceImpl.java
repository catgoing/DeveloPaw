package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Cartlist;
import ga.bowwow.service.store.StoreCartlistService;

@Service
public class StoreCartlistServiceImpl implements StoreCartlistService {
	
	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public void insertCartlist(Cartlist cartlist) {
		System.out.println("impl-------------");
		System.out.println(cartlist);		
		storeDAO.insertCartlist(cartlist);
	}

	@Override
	public void updateCartlist(Cartlist cartlist) {

	}

	@Override
	public void deleteCartlist(int cart_id) {
		System.out.println("impl-------------");
		System.out.println(cart_id);		
		storeDAO.deleteCartlist(cart_id);
	}

	@Override
	public List<Cartlist> getCartList(Cartlist cartlist) {
		System.out.println("impl-------------");
		return storeDAO.getCartlist(cartlist);
		
	}

}
