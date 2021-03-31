package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserAddress;

@Repository("AddrAccountDAO")
public class UserAddressDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserAddressDAO() {
		System.out.println(">> AddrAccountDAO() 객체생성");
	}
	public void insertAddrAccount(UserAddress addrAccount) {
		mybatis.insert("AddrAccount.insertTemporaryUserAddress", addrAccount);
	}
	public UserAddress searchAddrAccount(UserAddress addrAccount) {
		return mybatis.selectOne("AddrAccount.getAddrAccount", addrAccount);
	}
}