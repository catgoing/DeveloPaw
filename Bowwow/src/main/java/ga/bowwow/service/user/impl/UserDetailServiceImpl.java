package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserDetail;

@Service("UserDetailService")
public class UserDetailServiceImpl implements UserGenericService<UserDetail> {
	@Autowired
	UserDetailDAO userDetailDAO;
	
	@Override
	public boolean addVo(UserDetail vo) {
		userDetailDAO.insertUserAccount(vo);
		return isRegistSuccess(vo);
	}
	@Override
	public boolean updateVo(UserDetail vo) {
		userDetailDAO.updateUserAccount(vo);
		return isVoValueExist(vo);
	}
	@Override
	public boolean deleteVo(UserDetail vo) {
		userDetailDAO.deleteUserAccount(vo);
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