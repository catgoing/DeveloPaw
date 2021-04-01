package ga.bowwow.service.user.impl;

import java.util.List;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserDTO;

public class UserListServiceImpl extends UserGenericService<UserDTO> {
	public UserListServiceImpl() {
		this.dao = dao;
	}

	@Override
	public List<UserDTO> getVoList(UserDTO vo) {
		return null;
	}

}
