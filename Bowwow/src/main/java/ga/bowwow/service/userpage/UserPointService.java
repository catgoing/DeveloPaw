package ga.bowwow.service.userpage;

import java.util.List;

import ga.bowwow.service.store.Order;

public interface UserPointService {
	List<Order> getUserPointList(Order order);
}
