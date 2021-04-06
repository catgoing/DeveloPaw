package ga.bowwow.service.userpage;

import java.util.List;

public interface UserInquiryService {
	int insertUserInquiry(UserInquiry userInquiry);
	UserInquiry getUserInquiry(UserInquiry userInquiry);
	List<UserInquiry> getUserInquiryList(UserInquiry userInquiry);
	int checkAnswer(UserInquiry userInquiry);
}
