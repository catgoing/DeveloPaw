package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Order;
import ga.bowwow.service.store.StoreOrderService;
@Service
public class StoreOrderServiceImpl implements StoreOrderService {
	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public void insertOrder(Order order) {
		storeDAO.insertOrder(order);
	}

	@Override
	public void updateOrder(Order order) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Order> getOrderList(int member_serial) {
		return storeDAO.getOrderList(member_serial);
	}

	@Override
	public Order getOrderDetail(int order_id) {
		return storeDAO.getOrderDetail(order_id);
	}

}
