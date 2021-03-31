package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserAddress;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("AddrAccountService")
public class UserAddressServiceImpl implements UserGenericService<UserAddress> {
	@Autowired
	private UserAddressDAO userAddressDAO;
	
	public UserAddress searchUser(UserAddress userAddress) {
		return userAddressDAO.searchUserAddress(userAddress);
	}
		
	@Override
	public boolean addVo(UserAddress vo) {
		userAddressDAO.insertUserAddress(vo);
		return isRegisterSuccess(vo);
	}
	@Override
	public boolean updateVo(UserAddress vo) {
		userAddressDAO.updateUserAddress(vo);
		return isRegisterSuccess(vo);
	}
	@Override
	public boolean deleteVo(UserAddress vo) {
		System.out.println(vo);
		userAddressDAO.deleteUserAddress(vo);
		return !isVoSerialExist(vo);
	}
	@Override
	public UserAddress getVo(UserAddress vo) {
		return userAddressDAO.getUserAddress(vo);
	}
	@Override
	public List<UserAddress> getVoList(UserAddress vo) {
		return null;
	}
	@Override
	public UserAddress searchVo(UserAddress vo) {
		return userAddressDAO.searchUserAddress(vo);
	}
}