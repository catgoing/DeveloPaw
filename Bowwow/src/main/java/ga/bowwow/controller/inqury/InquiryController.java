package ga.bowwow.controller.inqury;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.service.admin.impl.AdminInquiryDAO;
import ga.bowwow.service.userpage.UserInquiry;
import ga.bowwow.service.userpage.UserInquiryService;

@Controller
@SessionAttributes({"userinquiryList","uiqDetail"})
public class InquiryController {
	
	@Autowired
	UserInquiryService uiqServive;
	
	public InquiryController() {
		System.out.println("문의 컨트롤러 생성");
	}
	//문의입력
	@RequestMapping(value="/insertUserInquiry", method=RequestMethod.POST)
	public String insertUserInquiry(UserInquiry userInquiry) {
//		member_serial
//		inquiry_title
//		nickname --> userAccount 
//		inquiry_type
//		inquiry_content
		uiqServive.insertUserInquiry(userInquiry);
		
		return "redirect:/getUserInquiryList";
	}
	
	//문의리스트
	@RequestMapping(value="/getUserInquiryList")
	public String getUserInquiryList(UserInquiry userInquiry, Model model, HttpServletRequest requetst) {
		System.out.println(">> getUserInquiryList !");
		System.out.println("userInquiry : " + userInquiry);
		
		int member_serial = 1;
		userInquiry.setMember_serial(member_serial);
		
		List<UserInquiry> uiqList = uiqServive.getUserInquiryList(userInquiry);
		for(UserInquiry uiq : uiqList) {
			System.out.println(uiq.toString());
			String date = uiq.getInquiry_writedate().substring(0, 10);
			System.out.println("날짜수정~ " + date);
			uiq.setInquiry_writedate(date);
			
			if(uiq.getInquiry_type().equals("contactUs")) {
				uiq.setInquiry_type("이용문의");
			} else if(uiq.getInquiry_type().equals("buy")) {
				uiq.setInquiry_type("구매문의");
			} else if(uiq.getInquiry_type().equals("delivery")) {
				uiq.setInquiry_type("배송문의");
			} else {
				uiq.setInquiry_type("기타문의");
			}
		}
		
		model.addAttribute("userinquiryList", uiqList);
		System.out.println(userInquiry.getMember_serial() + "번 유저의 문의리스트를 넘겨줍니다");
		
		return "/mypage/myInquiry";
	}
	
	//문의상세 -- 수정해야함
	@RequestMapping(value="/myInquiryDetail")
	public String getUserInquiryDetail(UserInquiry userInquiry, Model model, HttpServletRequest requetst) {
		System.out.println(">> getUserInquiryDetail !");
		System.out.println("userInquiry : " + userInquiry);
		System.out.println("inquiry_serial : " + userInquiry.getInquiry_serial());
		
		int member_serial = 1;
		userInquiry.setMember_serial(member_serial);
		
		UserInquiry uiq = uiqServive.getUserInquiry(userInquiry);
		
		model.addAttribute("uiqDetail", uiq);
		System.out.println(uiq); //null값이 들어옴...왜??
		System.out.println(userInquiry.getMember_serial() + "번 유저의 " + userInquiry.getInquiry_serial() + "번 문의를 넘겨줍니다");
		
		return "/mypage/myInquiryDetail";
	}
	
}
