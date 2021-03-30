package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserDetail;
import ga.bowwow.service.user.UserGenericService;

@Service("UserDetailService")
public class UserDetailServiceImpl implements UserGenericService<UserDetail> {
	@Autowired
	UserDetailDAO userDetailDAO;
	
	@Override
	public boolean addVo(UserDetail vo) {
		System.out.println("test");

		userDetailDAO.insertUserAccount(vo);
		return isRegisterSuccess(vo);
	}
	@Override
	public boolean updateVo(UserDetail vo) {
		userDetailDAO.updateUserAccount(vo);
		return isVoValueExist(vo);
	}
	@Override
	public boolean deleteVo(UserDetail vo) {
		userDetailDAO.updateUserAccount(vo);
		return isResignSuccess(vo);
	}
	@Override
	public UserDetail getVo(UserDetail vo) {
		return userDetailDAO.getUserAccount(vo);
	}
	@Override
	public List<UserDetail> getVoList(UserDetail vo) {
		return null;
	}
	
	@Override
	public UserDetail searchVo(UserDetail vo) {
		return userDetailDAO.searchUserAccount(vo);
	}
}