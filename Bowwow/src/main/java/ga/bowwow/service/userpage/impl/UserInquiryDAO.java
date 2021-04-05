package ga.bowwow.service.userpage.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.userpage.UserInquiry;

@Repository("UserInquiry")
public class UserInquiryDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserInquiryDAO() {
		System.out.println("유저문의DAO생성 UserInquiry");
	}
	
	public int insertUserInquiry(UserInquiry userInquiry) {
		System.out.println("유저문의DAO insert");
		
		return mybatis.insert("inquiry.userInquiryWrite", userInquiry);	
	}
	public int updateUserInquiry(UserInquiry userInquiry) {
		System.out.println("유저문의DAO update");
		return 0;
		
	}
	public UserInquiry getUserInquiry(UserInquiry userInquiry) {
		System.out.println("유저문의DAO selectOne");
		return userInquiry;
		
	}
	public List<UserInquiry> getUserInquiryList(UserInquiry userInquiry){
		System.out.println("유저문의DAO selectAll");
		int member_serial = userInquiry.getMember_serial();
		String inquiry_type = userInquiry.getInquiry_type();
		
		System.out.println("selectAll : " +member_serial + ", " + inquiry_type);
		
		return mybatis.selectList("inquiry.userInquirySelect", userInquiry);
		
	}
	
}
