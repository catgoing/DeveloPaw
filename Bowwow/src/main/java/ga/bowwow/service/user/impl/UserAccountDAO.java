package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserAccount;

@Repository("UserAccountDAO")
public class UserAccountDAO {
	@Autowired
	@Qualifier("local")
	private SqlSessionTemplate mybatis;
	
	public UserAccountDAO() {
		System.out.println(">> UserAccountDAO() 객체생성");
	}
	
	public void insertUserAccount(UserAccount userAccount) {
		System.out.println("===> MyBatis로 insertUserAccount() 실행");
		mybatis.insert("UserAccountDAO.insertUserAccount", userAccount);
	}
	
	public void updateUserAccount(UserAccount userAccount) {
		System.out.println("===> MyBatis로 updateUserAccount() 실행");
		mybatis.update("UserAccountDAO.updateUserAccount", userAccount);
	}
	
	public UserAccount getUserAccount(UserAccount userAccount) {
		System.out.println("===> MyBatis로 getUserAccount() 실행");
		return mybatis.selectOne("UserAccount.getUserAccount", userAccount);
	}
	public UserAccount verifyAccount(UserAccount userAccount) {
		System.out.println("===> MyBatis로 verifyLogin() 실행");
		return mybatis.selectOne("UserAccount.verifyAccount", userAccount);
	}
}