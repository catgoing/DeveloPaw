package ga.bowwow.service.store;

import java.util.List;

public interface StoreOrderService {
	public void insertOrder(Order order);
	public void updateOrder(Order order);
	public void deleteOrder(String o_id);
	public List<Order> getOrderList(Order order);
	public Order getOrderDetail(int order_id);
	public void changeStock(Order order);
	public void changeOrderStatus(int order_id);

}
