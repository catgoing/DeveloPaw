package ga.bowwow.service.userpage;

import java.util.List;

public interface MyInquiryService {
	int insertMyInquiry(MyInquiry myInquiry);
	MyInquiry getMyInquiry(MyInquiry myInquiry);
	List<MyInquiry> getMyInquiryList(MyInquiry myInquiry);
	int checkAnswer(MyInquiry myInquiry);
	int insertAdminInquiryAnswer(MyInquiry myInquiry);
	List<MyInquiry> getAllInquiry(MyInquiry myInquiry);
}
