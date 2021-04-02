package ga.bowwow.service.admin.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.admin.AdminInquiry;

//@Repository("AdminInquiry")
public class AdminInquiryDAO {
	
	//@Autowired
	//private SqlSessionTemplate mybatis;
	
	public AdminInquiryDAO() {
		System.out.println("AdminInquiryDAO() 객체생성!");
	}
	
	public int insertAdminInquiry(AdminInquiry adminInquiry) {
		System.out.println("--insertAdminInquiry() 실행--");

		return 0;
	}
	public int updateAdminInquiry(AdminInquiry adminInquiry) {
		System.out.println("--updateAdminInquiry() 실행--");

		return 0;
	}
	public int deleteAdminInquiry(AdminInquiry adminInquiry) {
		System.out.println("--deleteAdminInquiry() 실행--");

		return 0;
	}
	public AdminInquiry getAdminInquiry(AdminInquiry adminInquirynquiry) {
		System.out.println("--getAdminInquiry() 실행--");

		return adminInquirynquiry;
	}
	public List<AdminInquiry> getAdminInquiryList(AdminInquiry adminInquiry){
		System.out.println("--getAdminInquiryList() 실행--");

		return null;
	}
	
}
