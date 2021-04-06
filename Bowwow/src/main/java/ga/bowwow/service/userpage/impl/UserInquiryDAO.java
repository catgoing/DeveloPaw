package ga.bowwow.service.userpage.impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import ga.bowwow.service.admin.AdminInquiry;
import ga.bowwow.service.admin.impl.AdminInquiryDAO;
import ga.bowwow.service.userpage.UserInquiry;

@Repository("UserInquiry")
public class UserInquiryDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserInquiryDAO() {
		System.out.println("유저문의DAO생성 UserInquiry");
	}
	
	//유저문의 insert
	public int insertUserInquiry(UserInquiry userInquiry) {
		System.out.println("유저문의DAO insert");
		
		return mybatis.insert("inquiry.userInquiryWrite", userInquiry);	
	}
	
	//유저문의 update -- 안할예정ㅎ 수정따위 못합니다.
	public int updateUserInquiry(UserInquiry userInquiry) {
		System.out.println("유저문의DAO update");
		return 0;
		
	}
	
	//유저문의 상세
	public UserInquiry getUserInquiry(UserInquiry userInquiry, Model model, AdminInquiry aiq, AdminInquiryDAO aidao) {
		System.out.println("유저문의DAO selectOne");
		
		aiq.setInquiry_serial(userInquiry.getInquiry_serial());
		AdminInquiry aqiresult = aidao.getAdminInquiry(aiq);
		model.addAttribute("inquiryAnswer", aqiresult);
		
		return mybatis.selectOne("inquiry.userInquiryListSelect", userInquiry);	
		
	}
	
	//유저문의 리스트
	public List<UserInquiry> getUserInquiryList(UserInquiry userInquiry){
		System.out.println("유저문의DAO selectAll");
		int member_serial = userInquiry.getMember_serial();
		String inquiry_type = userInquiry.getInquiry_type();
		
		System.out.println("selectAll : " +member_serial + ", " + inquiry_type);
		
		List<UserInquiry> list = mybatis.selectList("inquiry.userInquiryCount", userInquiry);
		for(UserInquiry uiq : list) {
			System.out.println(uiq.toString());
			int uiqSerial = uiq.getInquiry_serial();
			int checkResult = checkAnswer(uiqSerial);
			if(checkResult > 0) {
				uiq.setHave_answer("답변완료");
			} else {
				uiq.setHave_answer("답변대기");
			}		
		}
		return list;
	}
	
	public Map<String, Object> getAdminInquiry(AdminInquiry adminInquirynquiry) {
		System.out.println("--getAdminInquiry() 실행--");
		int aiqSerial = adminInquirynquiry.getInquiry_serial();

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("inqiuiry_serial", aiqSerial);
		
		return mybatis.selectOne("inquiry.adminInquirySelect", adminInquirynquiry);
	}
	
	//관리자 답변유무 체크
	public int checkAnswer(int uiqSerial) {
		System.out.println("답변유무체크 checkAnswer");
		System.out.println(uiqSerial);
		
		return mybatis.selectOne("inquiry.countAnswer", uiqSerial);
	}
	
}
