package ga.bowwow.service.userpage.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.userpage.MyInquiry;

@Repository("MyInquiry")
public class MyInquiryDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public MyInquiryDAO() {
		System.out.println("유저문의DAO생성 MyInquiry");
	}
	
	//유저문의 입력
	public int insertMyInquiry(MyInquiry myInquiry) {
		System.out.println("유저문의DAO insert");
		
		return mybatis.insert("inquiry.myInquiryWrite", myInquiry);	
	}
	
	//유저문의 상세
	public MyInquiry getMyInquiry(MyInquiry myInquiry) {
		System.out.println("유저문의DAO selectOne");
		System.out.println(">> MyInquiry :" + myInquiry);

		MyInquiry uiqDetail = mybatis.selectOne("inquiry.myInquiryCount", myInquiry);
		System.out.println("test : " + uiqDetail);
				
		return uiqDetail;
	}
	
	//유저문의 리스트
	public List<MyInquiry> getMyInquiryList(MyInquiry myInquiry){
		System.out.println("유저문의DAO selectAll");
		int member_serial = myInquiry.getMember_serial();
		
		System.out.println("타입검색 : " + myInquiry.getTypeSelect());
		//문의유형 설정하지않으면 기본값 : all-->null일때 구분
//		if(MyInquiry.getTypeSelect() == null) {
//			MyInquiry.setTypeSelect("all");
//		}
		
		System.out.println("selectAll : " + member_serial + ", " + myInquiry.getTypeSelect());
		
		List<MyInquiry> list = mybatis.selectList("inquiry.myInquiryListSelect", myInquiry);
		for(MyInquiry uiq : list) {
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
	public int checkAnswer(MyInquiry myInquiry) {
		System.out.println("답변유무체크 checkAnswer >>> " + myInquiry.getInquiry_serial());

		return mybatis.selectOne("inquiry.checkAnswerCount", myInquiry);
	}
	
	//관리자 답변입력
	public int insertAdminInquiryAnswer(MyInquiry myInquiry) {
		System.out.println("관리자 문의답변 입력");
		
		return mybatis.insert("inquiry.adminInquiryWrite", myInquiry);
	}
	
	
	//관리자의 유저문의출력
	public List<MyInquiry> getAllInquiry(MyInquiry myInquiry) {
		System.out.println("유저문의List출력 getAllInquiry");
		System.out.println(">> MyInquiry :" + myInquiry);

		List<MyInquiry> inquiryList = mybatis.selectList("inquiry.selectAllInquiry", myInquiry);
		System.out.println("all inquiryList : " + inquiryList);
				
		return inquiryList;
	}
	
	
}
