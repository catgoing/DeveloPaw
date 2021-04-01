package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserGenericDAO;
import ga.bowwow.service.user.VO.UserAddress;
import ga.bowwow.service.user.VO.UserDetail;

@Repository("UserDetailDAO")
public class UserDetailDAO extends UserGenericDAO<UserAddress> {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserDetailDAO() {
		System.out.println(">> UserDetailDAO() 객체생성");
		this.setQueries("UserAccount.insertTemporaryUserDetail"
				, "UserAccount.updateUserDetail"
				, "UserAccount.deleteUserDetail"
				, "UserAccount.getUserDetail"
				, "UserAccount.searchUserDetail"
				, "YETNOGetListQuery");
	}
}