package ga.bowwow.service.user.impl;

import java.util.List;

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
		this.setQueries("UserAccount.insertTemporaryUserAccount"
				, "UserAccount.updateUserAccount"
				, "UserAccount.deleteUserAccount"
				, "UserAccount.getUserAccount"
				, "UserAccount.searchUserAccount"
				, "UserAccount.getUserList");
//		TODO REPLACE TEMPORARY INSERT mybatis.insert("UserAccount.insertUserAccount", userAccount);
	}

	public UserAccount verifyAccount(UserAccount userAccount) {
		return mybatis.selectOne("UserAccount.loginValidation", userAccount);
	}
	
	public UserAccount verifyId(UserAccount userAccount) {
		return mybatis.selectOne("UserAccount.IdValidation", userAccount);
	}
	
	public List<UserAccount> getUserList() {
		return mybatis.selectList("UserAccount.getUserList");
	}
}
