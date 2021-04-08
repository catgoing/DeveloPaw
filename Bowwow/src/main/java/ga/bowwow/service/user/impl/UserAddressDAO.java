package ga.bowwow.service.user.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserGenericDAO;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserAddress;

@Repository("UserAddressDAO")
public class UserAddressDAO extends UserGenericDAO<UserAddress> {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserAddressDAO() {
		System.out.println(">> UserAddressDAO() 객체생성");
		this.setQueries("UserAddress.insertTemporaryUserAddress"
				, "UserAddress.updateUserAddress"
				, "UserAddress.deleteUserAddress"
				, "UserAddress.getUserAddress"
				, "UserAddress.searchUserAddress"
				, "YetNoGetListQuery");
	}
	
	public List<UserAddress> getAddressList(UserAccount userAccount) {
		return mybatis.selectList("UserAddress.getUserAddressList", userAccount);
	}
}