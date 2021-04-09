package ga.bowwow.service.userpage.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.userpage.MyInquiry;
import ga.bowwow.service.userpage.MyInquiryService;

@Service("MyInquiryService")
public class MyInquiryServiceImpl implements MyInquiryService{

	@Autowired
	MyInquiryDAO uiqDAO;
	
	@Override
	public int insertMyInquiry(MyInquiry myInquiry) {
		return uiqDAO.insertMyInquiry(myInquiry);
	}

	@Override
	public MyInquiry getMyInquiry(MyInquiry myInquiry) {
		MyInquiry uiq = uiqDAO.getMyInquiry(myInquiry);
		return uiq;
	}

	@Override
	public List<MyInquiry> getMyInquiryList(Map<String, Object> map) {
		List<MyInquiry> list = uiqDAO.getMyInquiryList(map);
		return list;
	}

	@Override
	public int checkAnswer(MyInquiry myInquiry) {
		return uiqDAO.checkAnswer(myInquiry);
	}

	@Override
	public int insertAdminInquiryAnswer(MyInquiry myInquiry) {
		return uiqDAO.insertAdminInquiryAnswer(myInquiry);
	}

	@Override
	public List<MyInquiry> getAllInquiry(Map<String, String> map) {
		List<MyInquiry> list = uiqDAO.getAllInquiry(map);
		return list;
	}

	@Override
	public int getInquiryCount(Map<String, String> map) {
		return uiqDAO.getInquiryCount(map);
	}

	@Override
	public int getMyInquiryCount(Map<String, Object> map) {
		return uiqDAO.getMyInquiryCount(map);
	}
	
	

}
