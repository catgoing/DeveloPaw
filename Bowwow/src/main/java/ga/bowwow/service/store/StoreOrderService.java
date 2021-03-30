package ga.bowwow.service.store;

import java.util.List;

public interface StoreOrderService {
	public void insertOrder(Order order);
	public void updateOrder(Order order);
	public List<Order> getOrderList(int member_serial);
	public Order getOrderDetail(int order_id);

}
