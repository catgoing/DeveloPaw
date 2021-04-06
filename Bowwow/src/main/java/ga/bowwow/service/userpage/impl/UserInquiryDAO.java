package ga.bowwow.service.userpage.impl;

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
	
	//유저문의 입력
	public int insertUserInquiry(UserInquiry userInquiry) {
		System.out.println("유저문의DAO insert");
		
		return mybatis.insert("inquiry.userInquiryWrite", userInquiry);	
	}
	
	//유저문의 상세
	public UserInquiry getUserInquiry(UserInquiry userInquiry) {
		System.out.println("유저문의DAO selectOne");
		System.out.println(">> userInquiry :" + userInquiry);
//		Map<String, Object> map = mybatis.selectOne("inquiry.userInquiryCount", userInquiry);
//		System.out.println("result : " + map);
//		for(String key : map.keySet()) {
//			String value = (String) map.get(key); 
//			System.out.println(">>" + key + " : " + value);
//		}

		UserInquiry test = mybatis.selectOne("inquiry.selectOneTest", userInquiry);
		System.out.println("test : " + test);
		//test.get
		return test;
	}
	
	//유저문의 리스트
	public List<UserInquiry> getUserInquiryList(UserInquiry userInquiry){
		System.out.println("유저문의DAO selectAll");
		int member_serial = userInquiry.getMember_serial();
		String inquiry_type = userInquiry.getInquiry_type();
		
		System.out.println("selectAll : " +member_serial + ", " + inquiry_type);
		
		List<UserInquiry> list = mybatis.selectList("inquiry.userInquiryListSelect", userInquiry);
		for(UserInquiry uiq : list) {
			System.out.println(" 1 : " + uiq.toString());
			int checkResult = checkAnswer(uiq);
			if(checkResult > 0) {
				uiq.setHave_answer("답변완료");
			} else {
				uiq.setHave_answer("답변대기");
			}		
			System.out.println(" 2 : " + uiq.toString());
		}
		return list;
	}
	
	//관리자 답변유무 체크
	public int checkAnswer(UserInquiry userInquiry) {
		System.out.println("답변유무체크 checkAnswer >>> " + userInquiry.getInquiry_serial());
//		Map<String, Integer> map = new HashMap<String, Integer>();
//		map.put("inquiry_serial", userInquiry.getInquiry_serial());
//		System.out.println(map.toString());
		
		return mybatis.selectOne("inquiry.checkAnswerCount", userInquiry);
	}
	
}
