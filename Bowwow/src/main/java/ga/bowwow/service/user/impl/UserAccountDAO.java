package ga.bowwow.service.user.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserAccount;

@Repository("UserAccountDAO")
public class UserAccountDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public UserAccountDAO() {
		System.out.println(">> UserAccountDAO() 객체생성");
	}
	public void insertUserAccount(UserAccount userAccount) {
//		mybatis.insert("UserAccount.insertUserAccount", userAccount);
		mybatis.insert("UserAccount.insertTemporaryUserAccount", userAccount);
	}
	public void updateUserAccount(UserAccount userAccount) {
		mybatis.update("UserAccount.updateUserAccount", userAccount);
	}
	public void deleteUserAccount(UserAccount userAccount) {
		mybatis.update("UserAccount.deleteUserAccount", userAccount);
	}
	public UserAccount getUserAccount(UserAccount userAccount) {
		return mybatis.selectOne("UserAccount.getUserAccount", userAccount);
	}
	public UserAccount searchUserAccount(UserAccount userAccount) {
		return mybatis.selectOne("UserAccount.searchUserAccount", userAccount);
	}
	public UserAccount verifyAccount(UserAccount userAccount) {
		return mybatis.selectOne("UserAccount.loginValidation", userAccount);
	}
}
