package ga.bowwow.service.user.impl;

import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserGenericDAO;
import ga.bowwow.service.user.VO.UserAccount;

@Repository("UserAccountDAO")
public class UserAccountDAO extends UserGenericDAO<UserAccount> {
	public UserAccountDAO() {
		System.out.println(">> UserAccountDAO() 객체생성");
		setQueries(
				"UserAccount.insertTemporaryUserAccount"
				, "UserAccount.updateUserAccount"
				, "UserAccount.deleteUserAccount"
				, "UserAccount.getUserAccount"
				, "UserAccount.searchUserAccount"
				, ""
		);
	}
	public UserAccount verifyAccount(UserAccount userAccount) {
		return mybatis.selectOne("UserAccount.loginValidation", userAccount);
	}
}
