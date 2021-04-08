package ga.bowwow.service.user.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.controller.common.StaticUtil;
import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserAccount;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("UserAccountService")
public class UserAccountServiceImpl extends UserGenericService<UserAccount> {
	//TODO ServiceImpl과 DAOImpl의 강결합이 좋지 않은 건가? 싶기도?
	public UserAccountServiceImpl(@Autowired UserAccountDAO dao) {
		this.dao = dao;
	}

	public boolean loginAttemp(UserAccount userAccount) {
		System.out.println("loginAttemptTest : " + userAccount);
		return StaticUtil.isListNotNull(((UserAccountDAO)dao).verifyAccount(userAccount));
	}
	
	public boolean checkIdDuplication(UserAccount userAccount) {
		//should be null;
		System.out.println("checkIdDuplication Vo: " + userAccount);
		System.out.println("checkIdDuplication : " + ((UserAccountDAO)dao).verifyId(userAccount));
		System.out.println("checkIdDuplication return : " + StaticUtil.isListNotNull(((UserAccountDAO)dao).verifyId(userAccount)));
		return !StaticUtil.isListNotNull(((UserAccountDAO)dao).verifyId(userAccount));
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