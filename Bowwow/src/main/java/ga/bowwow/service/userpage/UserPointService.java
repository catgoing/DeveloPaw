package ga.bowwow.service.userpage;

import java.util.List;

import ga.bowwow.service.store.Order;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserDTO;

public interface UserPointService {
	List<Order> getUserPointList(Order order);
	List<Order> getMyHomePointList(int member_serial);
}