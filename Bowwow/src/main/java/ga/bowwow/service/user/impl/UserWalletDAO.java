package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.VO.UserDetail;
import ga.bowwow.service.user.VO.UserWallet;

@Repository("UserWalletDAO")
public class UserWalletDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserWalletDAO() {
		System.out.println(">> UserWalletDAO() 객체생성");
	}
	public void insertUserWallet(UserWallet userWallet) {
		System.out.println("dao" + userWallet);
		mybatis.insert("UserWallet.insertTemporaryUserWallet", userWallet);
	}
	public void deleteUserWallet(UserWallet userWallet) {
		System.out.println("dao" + userWallet);
		mybatis.insert("UserWallet.deleteUserWallet", userWallet);
	}
	public void updateUserWallet(UserWallet userWallet) {
		System.out.println("dao" + userWallet);
		mybatis.insert("UserWallet.updateUserWallet", userWallet);
	}
	public UserWallet getUserWallet(UserWallet userWallet) {
		return mybatis.selectOne("UserWallet.getUserWallet", userWallet);
	}
	public UserWallet searchUserWallet(UserWallet userWallet) {
		return mybatis.selectOne("UserWallet.searchUserWallet", userWallet);
	}
	
}