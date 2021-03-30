package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.AddrAccount;
import ga.bowwow.service.user.UserGenericService;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("AddrAccountService")
public class AddrAccountServiceImpl implements UserGenericService<AddrAccount> {
	@Autowired
	private AddrAccountDAO AddrAccountDAO;
	
	public AddrAccount searchUser(AddrAccount AddrAccount) {
		return AddrAccountDAO.searchAddrAccount(AddrAccount);
	}
	
	public boolean addAddr(AddrAccount vo) {
		return this.addVo(vo);
	}
	
	@Override
	public boolean addVo(AddrAccount vo) {
		AddrAccountDAO.insertAddrAccount(vo);
		return isRegisterSuccess(vo);
	}
	@Override
	public boolean updateVo(AddrAccount vo) {
		return false;
	}
	@Override
	public boolean deleteVo(AddrAccount vo) {
		return false;
	}
	@Override
	public AddrAccount getVo(AddrAccount vo) {
		return null;
	}
	@Override
	public List<AddrAccount> getVoList(AddrAccount vo) {
		return null;
	}
	@Override
	public AddrAccount searchVo(AddrAccount vo) {
		return null;
	}
}