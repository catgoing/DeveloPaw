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
	
	
	
	//legacy
				public void insertUserAccount(UserDetail userDetail) {
			//		mybatis.insert("UserAccount.insertUserAccount", userAccount);
					mybatis.insert("UserAccount.insertTemporaryUserDetail", userDetail);
				}
				public void updateUserAccount(UserDetail userDetail) {
					mybatis.update("UserAccount.updateUserDetail", userDetail);
				}
				public void deleteUserAccount(UserDetail userDetail) {
					System.out.println(userDetail);
					mybatis.update("UserAccount.deleteUserDetail", userDetail);
				}
				public UserDetail getUserAccount(UserDetail userDetail) {
					return mybatis.selectOne("UserAccount.getUserDetail", userDetail);
				}
				public UserDetail searchUserAccount(UserDetail userDetail) {
					return mybatis.selectOne("UserAccount.searchUserDetail", userDetail);
				}
}