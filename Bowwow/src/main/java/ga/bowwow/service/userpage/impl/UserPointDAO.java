package ga.bowwow.service.userpage.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.store.Order;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserDTO;

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
	
	//마이홈 출력용 포인트리스트(최신순 10개)
	public List<Order> getMyHomePointList(int member_serial){
		List<Order> list = mybatis.selectList("UserAccount.mainSearchPoint", member_serial);
		for(Order o : list) {
			//date를 연월일시분 까지 출력
			String date = o.getOrder_date().substring(0, 16);
			o.setOrder_date(date);
		}
		return list;
	}
	
	//포인트탭 페이징처리용 구매내역수
	public int getMyPointCount(Map<String, String> map) {
		return mybatis.selectOne("UserAccount.searchforPointPaging", map);
	}
}
