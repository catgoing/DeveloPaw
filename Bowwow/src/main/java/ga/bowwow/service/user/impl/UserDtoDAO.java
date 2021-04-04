package ga.bowwow.service.user.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserGenericDAO;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserDTO;

@Repository("UserDtoDAO")
public class UserDtoDAO extends UserGenericDAO<UserAccount> {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserDtoDAO() {
		System.out.println(">> UserDetailDAO() 객체생성");
		this.setQueries("UserAccount.insertTemporaryUserDetail"
				, "UserAccount.updateUserDetail"
				, "UserAccount.deleteUserDetail"
				, "UserAccount.getUserDetail"
				, "UserAccount.searchUserDetail"
				, "YETNOGetListQuery");
	}

	public List<UserDTO> getUserList() {
		return mybatis.selectList("UserAccount.getUserDtoList");
	}
}
