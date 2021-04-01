package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.VO.UserAddress;

@Repository("UserAddressDAO")
public class UserAddressDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserAddressDAO() {
		System.out.println(">> UserAddressDAO() 객체생성");
	}
	public void insertUserAddress(UserAddress userAddress) {
		System.out.println("dao : " + userAddress);

		mybatis.insert("UserAddress.insertTemporaryUserAddress", userAddress);
	}
	public void updateUserAddress(UserAddress userAddress) {
		mybatis.insert("UserAddress.updateUserAddress", userAddress);
	}
	public UserAddress getUserAddress(UserAddress userAddress) {
		return mybatis.selectOne("UserAddress.getUserAddress", userAddress);
	}
	public UserAddress searchUserAddress(UserAddress userAddress) {
		System.out.println("searchdao : " + userAddress);

		return mybatis.selectOne("UserAddress.searchUserAddress", userAddress);
	}
	public void deleteUserAddress(UserAddress userAddress) {
		System.out.println("dao");
		mybatis.delete("UserAddress.deleteUserAddress", userAddress);
	}
}