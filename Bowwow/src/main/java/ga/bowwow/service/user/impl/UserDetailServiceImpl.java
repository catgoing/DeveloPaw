package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.UserDetail;
import ga.bowwow.service.user.UserGenericService;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
//@Service("UserDetailService")
public class UserDetailServiceImpl implements UserGenericService<UserDetail> {

	@Override
	public boolean addUser(UserDetail vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUser(UserDetail vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(UserDetail vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserDetail getUser(UserDetail vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserDetail> getUserList(UserDetail vo) {
		// TODO Auto-generated method stub
		return null;
	}
//	@Autowired
//	private UserDetailDAO userDetailDAO;
//	
//	public boolean loginAttemp(UserAccount userAccount) {
//		return isNotNull(userAccountDAO.verifyAccount(userAccount));
//	}
//	public UserAccount searchUser(UserAccount userAccount) {
//		return userAccountDAO.searchUserAccount(userAccount);
//	}
//	private boolean isNotNull(Object object) {
//		return (object != null) ? true : false;
//	}
//	
//	
//	@Override
//	public UserDetail getUser(UserDetail vo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	@Override
//	public List<UserDetail> getUserList(UserDetail vo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	@Override
//	public boolean addUser(UserDetail vo) {
//		// TODO Auto-generated method stub
//		return false;
//	}
//	@Override
//	public boolean updateUser(UserDetail vo) {
//		// TODO Auto-generated method stub
//		return false;
//	}
//	@Override
//	public boolean deleteUser(UserDetail vo) {
//		// TODO Auto-generated method stub
//		return false;
//	}
	
	
}