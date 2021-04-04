package ga.bowwow.service.userpage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;
import ga.bowwow.service.userpage.UserInquiry;
import ga.bowwow.service.userpage.UserInquiryService;

@Service
public class UserPageServiceImpl implements UserInquiryService {

	@Autowired
	private UserInquiryDAO userinquiryDAO;
	
	public UserPageServiceImpl() {
		System.out.println("유저문의 객체생성");
	}

	@Override
	public int insertUserInquiry(UserInquiry userInquiry) {
		return userinquiryDAO.insertInquiry(userInquiry);
	}

	@Override
	public int updateUserInquiry(UserInquiry userInquiry) {
		return userinquiryDAO.updateInquiry(userInquiry);
	}

	@Override
	public UserInquiry getUserInquiry(UserInquiry userInquiry) {
		return userinquiryDAO.getInquiry(userInquiry);
	}

	@Override
	public List<UserInquiry> getUserInquiryList(UserInquiry userInquiry) {
		return userinquiryDAO.getInquiryList(userInquiry);
	}
	
	
}
