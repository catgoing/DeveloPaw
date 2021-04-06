package ga.bowwow.controller.inqury;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.service.admin.impl.AdminInquiryDAO;
import ga.bowwow.service.userpage.UserInquiry;
import ga.bowwow.service.userpage.UserInquiryService;

@Controller
@SessionAttributes({"userinquiryList", "uiqDetail" , "inquiryAnswer"})
public class InquiryController {
	
	@Autowired
	UserInquiryService uiqServive;
	
	public InquiryController() {
		System.out.println("문의 컨트롤러 생성");
	}
	
	@RequestMapping(value="/getUserInquiryList")
	public String getUserInquiryList(UserInquiry userInquiry, Model model, HttpServletRequest requetst) {
		System.out.println(">> getUserInquiryList !");
		System.out.println("userInquiry : " + userInquiry);
		System.out.println("member_serial : " + userInquiry.getMember_serial());
		
		int member_serial = 1;
		userInquiry.setMember_serial(member_serial);
		
		List<UserInquiry> uiqList = uiqServive.getUserInquiryList(userInquiry);
//		for(UserInquiry uiq : uiqList) {
//			System.out.println(uiq.toString());
//			int uiqSerial = uiq.getInquiry_serial();
//			int checkResult = uiqServive.checkAnswer(uiqSerial);
//			if(checkResult > 0) {
//				uiq.setHave_answer("답변완료");
//			} else {
//				uiq.setHave_answer("답변대기");
//			}
//			
//		}
		
		model.addAttribute("userinquiryList", uiqList);
		System.out.println(uiqList.toString());
		System.out.println(userInquiry.getMember_serial() + "번 유저의 문의리스트를 넘겨줍니다");
		
		return "/mypage/myInquiry";
	}
	
	@RequestMapping(value="/myInquiryDetail")
	public String getUserInquiryDetail(UserInquiry userInquiry, Model model, HttpServletRequest requetst) {
		System.out.println(">> getUserInquiryDetail !");
		System.out.println("userInquiry : " + userInquiry);
		System.out.println("member_serial : " + userInquiry.getMember_serial());
		
		int member_serial = 1;
		userInquiry.setMember_serial(member_serial);
		
		UserInquiry uiq = uiqServive.getUserInquiry(userInquiry);
		
		model.addAttribute("uiqDetail", uiq);
		System.out.println(uiq);
		System.out.println(userInquiry.getMember_serial() + "번 유저의 " + userInquiry.getInquiry_serial() + "번 문의를 넘겨줍니다");
		
		return "/mypage/myInquiryDetail";
	}
	
}
