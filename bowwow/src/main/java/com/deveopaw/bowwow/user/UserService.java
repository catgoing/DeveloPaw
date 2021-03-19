package com.deveopaw.bowwow.user;

public interface UserService {
	void insertUser(UserPrimitiveVO vo);
	UserPrimitiveVO getUser(UserPrimitiveVO vo);
}
