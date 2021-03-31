package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserWallet;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("WalletAccountService")
public class UserWalletServiceImpl implements UserGenericService<UserWallet> {
	@Autowired
	private UserWalletDAO userWalletDAO;
	
	public UserWallet searchUser(UserWallet UserWallet) {
		return userWalletDAO.searchWalletAccount(UserWallet);
	}
		
	@Override
	public boolean addVo(UserWallet vo) {
		userWalletDAO.insertWalletAccount(vo);
		return isRegistSuccess(vo);
	}

	@Override
	public boolean updateVo(UserWallet vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteVo(UserWallet vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserWallet getVo(UserWallet vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserWallet> getVoList(UserWallet vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserWallet searchVo(UserWallet vo) {
		// TODO Auto-generated method stub
		return null;
	}
}