package ga.bowwow.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserDetail;

@Service("UserDetailService")
public class UserDetailServiceImpl extends UserGenericService<UserDetail> {
	
	public UserDetailServiceImpl(@Autowired UserDetailDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<UserDetail> getVoList(UserDetail vo) {
		// TODO Auto-generated method stub
		return null;
	}
}