package ga.bowwow.service.userpage.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.store.Order;

@Repository("UserPointDAO")
public class UserPointDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//유저포인트 리스트검색
	public List<Order> getMyPointList(Order order) {
		System.out.println("유저포인트 DAO!!!!");
		List<Order> list = mybatis.selectList("UserAccount.searchMyPoint", order);
		
		for(Order o : list) {
			//date를 연월일시분 까지 출력
			String date = o.getOrder_date().substring(0, 16);
			o.setOrder_date(date);
		}
		
		return list;
	}

	
}
