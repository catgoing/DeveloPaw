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
	
	//글 입력
	public void insertUserAccount(UserAccount vo) {
		System.out.println("===> MyBatis로 insertUserAccount() 실행");
		mybatis.insert("UserAccountDAO.insertUserAccount", vo);
	}
	
	//글 수정
	public void updateUserAccount(UserAccount vo) {
		System.out.println("===> MyBatis로 updateUserAccount() 실행");
		mybatis.update("UserAccountDAO.updateUserAccount", vo);
	}
}
