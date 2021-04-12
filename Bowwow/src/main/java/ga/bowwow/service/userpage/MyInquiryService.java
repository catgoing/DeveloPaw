package ga.bowwow.service.userpage;

import java.util.List;
import java.util.Map;

public interface MyInquiryService {
	int insertMyInquiry(MyInquiry myInquiry);
	MyInquiry getMyInquiry(MyInquiry myInquiry);
	List<MyInquiry> getMyInquiryList(Map<String, Object> map);
	int checkAnswer(MyInquiry myInquiry);
	int insertAdminInquiryAnswer(MyInquiry myInquiry);
	List<MyInquiry> getAllInquiry(Map<String, String> map);
	int getMyInquiryCount(Map<String, Object> map);
	int getAllInquiryCount(Map<String, String> map);
	MyInquiry getUserInquiry(MyInquiry myInquiry);
	
}
