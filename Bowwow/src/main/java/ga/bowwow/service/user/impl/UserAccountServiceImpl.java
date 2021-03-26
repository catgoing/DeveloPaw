package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.UserGenericService;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("UserAccountService")
public class UserAccountServiceImpl implements UserGenericService<UserAccount> {
	@Autowired
	private UserAccountDAO userAccountDAO;

	@Override
	public void addUser(UserAccount vo) {
	}

	@Override
	public void updateUser(UserAccount vo) {
	}

	@Override
	public void deleteUser(UserAccount vo) {
	}

	@Override
	public UserAccount getUser(UserAccount vo) {
		return null;
	}

	@Override
	public List<UserAccount> getUserList(UserAccount vo) {
		return null;
	}
	
}