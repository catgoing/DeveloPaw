package ga.bowwow.service.user.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.controller.common.StaticUtil;
import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserAccount;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("UserAccountService")
public class UserAccountServiceImpl extends UserGenericService<UserAccount> {
	
	public UserAccountServiceImpl(@Autowired UserAccountDAO dao) {
		this.dao = dao;
	}

	public boolean loginAttemp(UserAccount userAccount) {
		return StaticUtil.isNotNull(((UserAccountDAO)dao).verifyAccount(userAccount));
	}
	
	public boolean checkIdDuplication(UserAccount userAccount) {
		return !StaticUtil.isNotNull(((UserAccountDAO)dao).verifyId(userAccount));
	}
	
	@Override
	public List<UserAccount> getVoList(Map<String, String> map) {
		return null;
	}

	@Override
	public List<UserAccount> getVoList() {
		return ((UserAccountDAO)dao).getUserList();
	}
}