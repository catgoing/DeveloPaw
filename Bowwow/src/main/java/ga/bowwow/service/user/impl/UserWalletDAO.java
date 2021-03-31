package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.VO.UserWallet;

@Repository("UserWalletDAO")
public class UserWalletDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserWalletDAO() {
		System.out.println(">> UserWalletDAO() 객체생성");
	}
	public void insertWalletAccount(UserWallet walletAccount) {
		mybatis.insert("UserWallet.insertTemporaryUserWallet", walletAccount);
	}
	public UserWallet searchWalletAccount(UserWallet walletAccount) {
		return mybatis.selectOne("UserWallet.getWalletAccount", walletAccount);
	}
}