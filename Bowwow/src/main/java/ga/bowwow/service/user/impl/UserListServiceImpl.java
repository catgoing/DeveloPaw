package ga.bowwow.service.user.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.user.UserGenericService;
import ga.bowwow.service.user.VO.UserDTO;

@Service("UserListService")
public class UserListServiceImpl extends UserGenericService<UserDTO> {
	public UserListServiceImpl(@Autowired UserListDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<UserDTO> getVoList() {
		return null;
	}

	@Override
	public List<UserDTO> getVoList(Map<String, String> map) {
		
		return null;
	}
}
