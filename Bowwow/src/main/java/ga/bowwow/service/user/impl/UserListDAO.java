package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.UserGenericDAO;
import ga.bowwow.service.user.VO.UserAccount;

@Repository("UserListDAO")
public class UserListDAO extends UserGenericDAO<UserAccount> {
	@Autowired
	private SqlSessionTemplate mybatis;
}
