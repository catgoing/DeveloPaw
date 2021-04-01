package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserAddress;

//@Service : @Component 상속확장 어노테이션
//		비즈니스 로직처리 서비스 영역에 사용
@Service("userAddressService")
public class UserAddressServiceImpl extends UserGenericService<UserAddress> {
	public UserAddressServiceImpl(@Autowired UserAddressDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<UserAddress> getVoList(UserAddress vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}