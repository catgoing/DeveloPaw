package ga.bowwow.controller.userpage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ga.bowwow.service.store.CartList;
import ga.bowwow.service.store.CartListService;
import ga.bowwow.service.userpage.UserInquiry;
import ga.bowwow.service.userpage.UserInquiryService;

@Controller
public class UserInquiryController {
	
	@Autowired
	private UserInquiryService userInquiryService;
	
	public UserInquiryController() {
		System.out.println(">> userInquiryService() 실행");
	}
	
	// 문의 추가
	@ResponseBody
	public Map<String, String> adduserInquiry(CartList cartList) {
		return null;
	}
	
	// 문의 리스트 조회
	@RequestMapping
	public String getuserInquiryList(UserInquiry userInquiry,  Model model, HttpServletRequest request) {
//		System.out.println("userInquiry : " + userInquiry);
//		
//		List<UserInquiry> inquirylist = userInquiryService.getUserInquiryList(userInquiry);
//		
//		model.addAttribute("inquiryList", inquirylist);
//		
		return "myInquiry";
	}
	
	
}























