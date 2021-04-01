package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserGenericDAO;
import ga.bowwow.service.user.VO.UserAddress;
import ga.bowwow.service.user.VO.UserDetail;
import ga.bowwow.service.user.VO.UserWallet;

@Repository("UserWalletDAO")
public class UserWalletDAO extends UserGenericDAO<UserAddress> {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserWalletDAO() {
		System.out.println(">> UserWalletDAO() 객체생성");
		this.setQueries("UserWallet.insertTemporaryUserWallet"
				, "UserWallet.updateUserWallet"
				, "UserWallet.deleteUserWallet"
				, "UserWallet.getUserWallet"
				, "UserWallet.searchUserWallet"
				, "YETNOGETListQuery");
	}
}