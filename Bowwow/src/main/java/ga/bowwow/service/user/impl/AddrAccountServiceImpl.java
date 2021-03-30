package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.AddrAccount;
import ga.bowwow.service.user.AddrGenericService;
import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.UserGenericService;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("AddrAccountService")
public class AddrAccountServiceImpl implements AddrGenericService<AddrAccount> {
	@Autowired
	private AddrAccountDAO AddrAccountDAO;
	
	/*
	 * @Override public boolean addUser(UserAccount userAccount) {
	 * userAccountDAO.insertUserAccount(userAccount); return
	 * isRegisterSuccess(userAccount); }
	 * 
	 * @Override public boolean updateUser(UserAccount userAccount) {
	 * userAccountDAO.updateUserAccount(userAccount); return
	 * isUserValueExist(userAccount); }
	 * 
	 * @Override public boolean deleteUser(UserAccount userAccount) {
	 * userAccountDAO.deleteUserAccount(userAccount); return
	 * isResignSuccess(userAccount); }
	 * 
	 * @Override public UserAccount getUser(UserAccount userAccount) { return
	 * userAccountDAO.getUserAccount(userAccount); }
	 * 
	 * @Override public List<UserAccount> getUserList(UserAccount userAccount) {
	 * return null; }
	 */
//	
//	private boolean isUpdateSuccess(UserAccount userAccount, boolean expectBool) {
//		return isUserValueExist(userAccount) ? expectBool : !expectBool;
//	}
//	private boolean isResignSuccess(UserAccount userAccount) {
//		return isUpdateSuccess(userAccount, false);
//	}
//	private boolean isRegisterSuccess(UserAccount userAccount) {
//		return isUpdateSuccess(userAccount, true);
//	}
//	private boolean isUserValueExist(UserAccount userAccount) {
//		return userAccount.equals(searchUser(userAccount));
//	}
//	private UserAccount cleanUserAccount() {
//		return new UserAccount();
//	}
	public AddrAccount searchUser(AddrAccount AddrAccount) {
		return AddrAccountDAO.searchAddrAccount(AddrAccount);
	}
	
	@Override
	public boolean addAddr(AddrAccount vo) {
		AddrAccountDAO.insertAddrAccount(vo);
		return isRegisterSuccess(vo);
	}
	@Override
	public boolean updateAddr(AddrAccount vo) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean deleteAddr(AddrAccount vo) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public AddrAccount getAddr(AddrAccount vo) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<AddrAccount> getAddrList(AddrAccount vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	private boolean isUpdateSuccess(AddrAccount AddrAccount, boolean expectBool) {
		return isUserValueExist(AddrAccount) ? expectBool : !expectBool;
	}
	private boolean isUserValueExist(AddrAccount AddrAccount) {
		return AddrAccount.equals(searchUser(AddrAccount));
	}
	
	private boolean isRegisterSuccess(AddrAccount AddrAccount) {
	return isUpdateSuccess(AddrAccount, true);
	}
}