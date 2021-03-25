package ga.bowwow.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.UserAccountService;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("UserAccountService")
public class UserAccountServiceImpl implements UserAccountService {
	@Autowired //타입이 일치하는 객체(인스턴스) 주입
	//private UserAccountDAO UserAccountDAO;
	//private UserAccountDAOSpring UserAccountDAO;
//	ViewResolver vr = new ViewResolver;
	private UserAccountDAO UserAccountDAO;
	
	public UserAccountServiceImpl() {
		System.out.println(">> UserServiceImpl() 객체생성");
	}

	@Override
	public void insertUserAccount(UserAccount userAccount) {
	}

	@Override
	public UserAccount getUserAccount(UserAccount userAccount) {
		return UserAccountDAO.getUserAccount(userAccount);
	}
}