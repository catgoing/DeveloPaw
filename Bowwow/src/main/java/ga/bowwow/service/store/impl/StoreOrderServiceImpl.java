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
		storeDAO.updateOrder(order);
	}
	
	@Override
	public void deleteOrder(String order_id) {
		storeDAO.deleteOrder(order_id);
	}

	@Override
	public List<Order> getOrderList(Order order) {
		return storeDAO.getOrderList(order);
	}

	@Override
	public Order getOrderDetail(int order_id) {
		return storeDAO.getOrderDetail(order_id);
	}

	@Override
	public void changeStock(Order order) {
		storeDAO.changeStock(order);
	}

	@Override
	public void changeOrderStatus(int order_id) {
		storeDAO.changeOrderStatus(order_id);
		
	}


}
