package ga.bowwow.service.userpage.impl;

import java.util.List;
import java.util.Map;

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

		MyInquiry uiqDetail = mybatis.selectOne("inquiry.myInquirySearch", myInquiry);
		System.out.println("test : " + uiqDetail);
				
		return uiqDetail;
	}
	
	//유저문의 리스트
	public List<MyInquiry> getMyInquiryList(Map<String, Object> map){
		System.out.println("유저문의DAO selectAll");
		int member_serial = (int)map.get("member_serial");
		String typeSelect = (String)map.get("typeSelect");
		
		System.out.println("타입검색 : " + typeSelect);
		
		System.out.println("selectAll : " + member_serial + ", " + typeSelect);
		
		List<MyInquiry> list = mybatis.selectList("inquiry.myInquiryListSelect", map);
		for(MyInquiry uiq : list) {
			System.out.println(" 1 : " + uiq.toString());
			//날짜수정
			String date = uiq.getInquiry_writedate().substring(0, 10);
			uiq.setInquiry_writedate(date);
			//답변상태 체크
			int checkResult = checkAnswer(uiq);
			if(checkResult > 0) {
				uiq.setHave_answer("답변완료");
			} else {
				uiq.setHave_answer("답변대기");
			}
			//문의유형을 출력시 한글로 바꿔서 출력
			if(uiq.getInquiry_type().equals("contactUs")) {
				uiq.setInquiry_type("이용문의");
			} else if(uiq.getInquiry_type().equals("product")) {
				uiq.setInquiry_type("상품문의");
			} else if(uiq.getInquiry_type().equals("delivery")) {
				uiq.setInquiry_type("배송문의");
			} else {
				uiq.setInquiry_type("기타문의");
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
	public List<MyInquiry> getAllInquiry(Map<String, String> map) {
		System.out.println("유저문의List출력 getAllInquiry");
		System.out.println(">> MyInquiry :" + map);

		List<MyInquiry> inquiryList = mybatis.selectList("inquiry.selectAllInquiry", map);
		for(MyInquiry uiq : inquiryList) {
			//날짜수정
			String date = uiq.getInquiry_writedate().substring(0, 10);
			uiq.setInquiry_writedate(date);
			//답변상태 체크
			int checkResult = checkAnswer(uiq);
			if(checkResult > 0) {
				uiq.setHave_answer("답변완료");
			} else {
				uiq.setHave_answer("답변대기");
			}
			//문의유형을 출력시 한글로 바꿔서 출력
			if(uiq.getInquiry_type().equals("contactUs")) {
				uiq.setInquiry_type("이용문의");
			} else if(uiq.getInquiry_type().equals("product")) {
				uiq.setInquiry_type("상품문의");
			} else if(uiq.getInquiry_type().equals("delivery")) {
				uiq.setInquiry_type("배송문의");
			} else {
				uiq.setInquiry_type("기타문의");
			}
			
		}
		System.out.println("all inquiryList : " + inquiryList);
				
		return inquiryList;
	}
	//전 유저 문의갯수(관리자사용)
	public int getInquiryCount(Map<String, String> map) {
		return mybatis.selectOne("inquiry.InquiryCount", map);
	}
	//개별 유저 문의갯수
	public int getMyInquiryCount(Map<String, Object> map) {
		return mybatis.selectOne("inquiry.myInquiryCount", map);
	}
	
	
	
}
