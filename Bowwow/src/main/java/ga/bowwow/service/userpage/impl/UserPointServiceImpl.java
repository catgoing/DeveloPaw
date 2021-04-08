package ga.bowwow.service.userpage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Order;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserDTO;
import ga.bowwow.service.userpage.UserPointService;

@Service("UserPointService")
public class UserPointServiceImpl implements UserPointService {
	
	@Autowired
	UserPointDAO uPointDAO;
	
	@Override
	public List<Order> getUserPointList(Order order) {
		List<Order> pointList = uPointDAO.getMyPointList(order);
		return pointList;
	}

	@Override
	public List<Order> getMyHomePointList(int member_serial) {
		return uPointDAO.getMyHomePointList(member_serial);
	}
	
}
