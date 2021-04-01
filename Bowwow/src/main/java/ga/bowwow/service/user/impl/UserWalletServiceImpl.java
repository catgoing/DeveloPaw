package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserDetail;
import ga.bowwow.service.user.VO.UserWallet;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("WalletAccountService")
public class UserWalletServiceImpl implements UserGenericService<UserWallet> {
	@Autowired
	private UserWalletDAO userWalletDAO;
		
	@Override
	public boolean addVo(UserWallet vo) {
		System.out.println("dao" + vo);
		userWalletDAO.insertUserWallet(vo);
		return isRegistSuccess(vo);
	}
	@Override
	public boolean updateVo(UserWallet vo) { 
		userWalletDAO.updateUserWallet(vo);
		return isModifySuccess(vo);
	}
	@Override
	public boolean deleteVo(UserWallet vo) {
		userWalletDAO.deleteUserWallet(vo);
		return isResignSuccess(vo);
	}
	@Override
	public UserWallet getVo(UserWallet vo) {
		return userWalletDAO.getUserWallet(vo);
	}

	@Override
	public List<UserWallet> getVoList(UserWallet vo) {
		return null;
	}

	@Override
	public UserWallet searchVo(UserWallet vo) {
		return userWalletDAO.searchUserWallet(vo);
	}
}