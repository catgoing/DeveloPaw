package ga.bowwow.service.user.impl;

import java.util.List;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserGenericDAO;
import ga.bowwow.service.user.VO.UserAccount;

@Repository("UserAccountDAO")
public class UserAccountDAO extends UserGenericDAO<UserAccount> {
	@Autowired
	private SqlSessionTemplate mybatis;

	public UserAccountDAO() {
		System.out.println(">> UserAccountDAO() 객체생성");
		this.setQueries("UserAccount.insertUserAccount"
				, "UserAccount.updateUserAccount"
				, "UserAccount.deleteUserAccount"
				, "UserAccount.getUserAccount"
				, "UserAccount.searchUserAccount"
				, "UserAccount.getUserList");
//		TODO REPLACE TEMPORARY INSERT mybatis.insert("UserAccount.insertUserAccount", userAccount);
	}

	public List<UserAccount> verifyAccount(UserAccount userAccount) {
		return mybatis.selectList("UserAccount.loginValidation", userAccount, new RowBounds(0, 1));
	}
	
	public List<UserAccount> verifyId(UserAccount userAccount) {
		return mybatis.selectList("UserAccount.checkIdValidation", userAccount, new RowBounds(0, 1));
	}
	
	public List<UserAccount> getUserList() {
		return mybatis.selectList("UserAccount.getUserList");
	}
}
