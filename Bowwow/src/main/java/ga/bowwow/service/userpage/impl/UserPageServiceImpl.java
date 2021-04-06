package ga.bowwow.service.userpage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;

@Service("UserInquiryService")
public class UserPageServiceImpl implements UserInquiryService{

	@Autowired
	UserInquiryDAO uiqDAO;

	@Override
	public int insertUserInquiry(UserInquiry userInquiry) {

		return uiqDAO.insertUserInquiry(userInquiry);
	}

	@Override
	public int updateUserInquiry(UserInquiry userInquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserInquiry getUserInquiry(UserInquiry userInquiry) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserInquiry> getUserInquiryList(UserInquiry userInquiry) {
		List<UserInquiry> list = uiqDAO.getUserInquiryList(userInquiry);
		return list;
	}

	@Override
	public int checkAnswer(int uiqSerial) {
		return uiqDAO.checkAnswer(uiqSerial);
	}

}
