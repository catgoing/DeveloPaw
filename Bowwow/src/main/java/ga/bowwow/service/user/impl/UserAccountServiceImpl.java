package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.controller.common.StaticUtil;
import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserAccount;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("UserAccountService")
public class UserAccountServiceImpl implements UserGenericService<UserAccount> {
	@Autowired
	private UserAccountDAO userAccountDAO;
	
	public boolean loginAttemp(UserAccount userAccount) {
		return StaticUtil.isNotNull(userAccountDAO.verifyAccount(userAccount));
	}
	public UserAccount searchUser(UserAccount userAccount) {
		return userAccountDAO.searchUserAccount(userAccount);
	}
	
	
	//TODO 컨트롤러의 check를 컨트롤러로 데려와서 추상service에게 돌려줘야함?
	@Override
	public boolean addVo(UserAccount vo) {
		userAccountDAO.insertUserAccount(vo);
		return isRegisterSuccess(vo);
	}
	@Override
	public boolean updateVo(UserAccount vo) {
		userAccountDAO.updateUserAccount(vo);
		return isUserValueExist(vo);
	}
	@Override
	public boolean deleteVo(UserAccount vo) {
		userAccountDAO.deleteUserAccount(vo);
		return isResignSuccess(vo);
	}
	@Override
	public UserAccount getVo(UserAccount vo) {
		return userAccountDAO.getUserAccount(vo);
	}
	@Override
	public List<UserAccount> getVoList(UserAccount vo) {
		return null;
	}
	@Override
	public UserAccount searchVo(UserAccount vo) {
		return userAccountDAO.searchUserAccount(vo);
	}
	
	private boolean isUserValueExist(UserAccount userAccount) {
		return userAccount.equals(searchVo(userAccount));
	}
}