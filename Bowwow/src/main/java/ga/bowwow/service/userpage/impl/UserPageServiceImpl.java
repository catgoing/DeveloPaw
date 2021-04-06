package ga.bowwow.service.userpage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.userpage.UserInquiry;
import ga.bowwow.service.userpage.UserInquiryService;

@Service("UserInquiryService")
public class UserPageServiceImpl implements UserInquiryService{

	@Autowired
	UserInquiryDAO uiqDAO;

	@Override
	public int insertUserInquiry(UserInquiry userInquiry) {
		return uiqDAO.insertUserInquiry(userInquiry);
	}

	@Override
	public UserInquiry getUserInquiry(UserInquiry userInquiry) {
		UserInquiry uiq = uiqDAO.getUserInquiry(userInquiry);
		return uiq;
	}

	@Override
	public List<UserInquiry> getUserInquiryList(UserInquiry userInquiry) {
		List<UserInquiry> list = uiqDAO.getUserInquiryList(userInquiry);
		return list;
	}

	@Override
	public int checkAnswer(UserInquiry userInquiry) {
		return uiqDAO.checkAnswer(userInquiry);
	}

}
