package ga.bowwow.service.userpage;

import java.util.List;
import java.util.Map;

import ga.bowwow.service.store.Order;

public interface UserPointService {
	List<Order> getUserPointList(Order order);
	List<Order> getMyHomePointList(int member_serial);
	int getMyPointCount(Map<String, String> map);
}