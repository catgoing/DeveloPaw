package com.deveopaw.bowwow.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.deveopaw.bowwow.user.UserPrimitiveVO;
import com.deveopaw.bowwow.user.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDaoJdbcTemplate userDao;
	
	public void setUserDao(UserDaoJdbcTemplate userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public void insertUser(UserPrimitiveVO vo) {
		System.out.println("insert" + userDao);
		userDao.insertUser(vo);
	}

	@Override
	public UserPrimitiveVO getUser(UserPrimitiveVO vo) {
		return userDao.getUser(vo);
	}

	public UserServiceImpl() {	}
}
