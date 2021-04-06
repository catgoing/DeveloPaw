package ga.bowwow.service.user.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserWallet;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("WalletAccountService")
public class UserWalletServiceImpl extends UserGenericService<UserWallet> {
	@Autowired
	public UserWalletServiceImpl(UserWalletDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public List<UserWallet> getVoList() {
		return null;
	}

	@Override
	public List<UserWallet> getVoList(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}
}