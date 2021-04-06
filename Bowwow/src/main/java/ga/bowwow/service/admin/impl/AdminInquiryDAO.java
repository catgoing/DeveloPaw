package ga.bowwow.service.admin.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.admin.AdminInquiry;

@Repository("AdminInquiry")
public class AdminInquiryDAO {
	
	//@Autowired
	private SqlSessionTemplate mybatis;
	
	public AdminInquiryDAO() {
		System.out.println("AdminInquiryDAO() 객체생성!");
	}
	
	//관리자 답변 등록
	public int insertAdminInquiry(AdminInquiry adminInquiry) {
		System.out.println("--insertAdminInquiry() 실행--");

		return 0;
	}
	
	//관리자 답변 수정--안할예정
	public int updateAdminInquiry(AdminInquiry adminInquiry) {
		System.out.println("--updateAdminInquiry() 실행--");

		return 0;
	}
	
	//관리자 답변 삭제--안할예정
	public int deleteAdminInquiry(AdminInquiry adminInquiry) {
		System.out.println("--deleteAdminInquiry() 실행--");

		return 0;
	}
	
	//관리자 답변 조회(개별)
	public AdminInquiry getAdminInquiry(AdminInquiry adminInquirynquiry) {
		System.out.println("--getAdminInquiry() 실행--");
		int aiqSerial = adminInquirynquiry.getInquiry_serial();
		
		return mybatis.selectOne("inquiry.adminInquirySelect", aiqSerial);
	}
	
	//관리자 답변 전체 리스트
	public List<AdminInquiry> getAdminInquiryList(AdminInquiry adminInquiry){
		System.out.println("--getAdminInquiryList() 실행--");

		return null;
	}
	
}
