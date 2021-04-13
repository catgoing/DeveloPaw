package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Order;
import ga.bowwow.service.store.OrderDTO;
import ga.bowwow.service.store.OrderDetail;
import ga.bowwow.service.store.StoreOrderService;
@Service
public class StoreOrderServiceImpl implements StoreOrderService {
	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public int insertOrder(Order order) {
		return storeDAO.insertOrder(order);
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

	@Override
	public void insertOrderDetail(OrderDetail orderDetail) {
		storeDAO.insertOrderDetail(orderDetail);
	}

	@Override
	public List<Order> orderFromCartList(int order_id) {
		return storeDAO.orderFromCartList(order_id);
	}


}
