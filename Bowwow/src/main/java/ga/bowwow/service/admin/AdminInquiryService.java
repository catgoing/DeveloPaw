package ga.bowwow.service.admin;

import java.util.List;

public interface AdminInquiryService {
	int insertAdminInquiry(AdminInquiry adminInquiry);
	int updateAdminInquiry(AdminInquiry adminInquiry);
	int deleteAdminInquiry(AdminInquiry adminInquiry);
	AdminInquiry getAdminInquiry(AdminInquiry adminInquirynquiry);
	List<AdminInquiry> getAdminInquiryList(AdminInquiry adminInquiry);
}

