package ga.bowwow.service.userpage.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.userpage.UserInquiry;

@Repository("userInquiryDAO")
public class UserInquiryDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public int insertInquiry(UserInquiry userInquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateInquiry(UserInquiry userInquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	public UserInquiry getInquiry(UserInquiry userInquiry) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<UserInquiry> getInquiryList(UserInquiry userInquiry) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
