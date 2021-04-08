package ga.bowwow.service.userpage.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Order;
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


}
