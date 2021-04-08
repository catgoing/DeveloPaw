package ga.bowwow.controller.inqury;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.service.paging.Page;
import ga.bowwow.service.user.VO.UserDTO;
import ga.bowwow.service.userpage.MyInquiry;
import ga.bowwow.service.userpage.MyInquiryService;

@Controller
@SessionAttributes({"userinquiryList","uiqDetail","AllUsersInquiry"})
public class InquiryController {
	
	@Autowired
	private MyInquiryService myServive;
	
	public InquiryController() {
		System.out.println("문의 컨트롤러 생성");
	}
	
	@RequestMapping(value = "/mypage/myInquiry")
	public String myInquiry() {
		return "/getUserInquiryList";
	}
	
	
	//유저문의입력
	@RequestMapping(value="/insertUserInquiry", method=RequestMethod.POST)
	public String insertUserInquiry(MyInquiry myinquiry, HttpServletRequest request) {
		System.out.println("유저문의를 입력합니다.");
		myServive.insertMyInquiry(myinquiry);
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		System.out.println("member_serial : " + member_serial);
		
		System.out.println("입력끝??");
		return "redirect:/getUserInquiryList";
	}
	
	//유저문의리스트
	@RequestMapping(value="/getUserInquiryList")
	public String getUserInquiryList(MyInquiry myInquiry, Model model, HttpServletRequest request) {
		System.out.println(">> 로그인한 유저의 문의 리스트를 가져옵니다. !");
		System.out.println("userInquiry : " + myInquiry);
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		System.out.println("member_serial : " + member_serial);
		
		String cPage = request.getParameter("cPage");
		
		Page p = new Page();
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_serial", myInquiry.getMember_serial()+"");
		map.put("typeSelect", myInquiry.getTypeSelect());
		
		p = p.setPage(myServive.getMyInquiryCount(map), cPage, 10, 5);
		map = p.data2(p, myInquiry.getMember_serial()+"", myInquiry.getTypeSelect(), map);
		
		List<MyInquiry> uiqList = myServive.getMyInquiryList(map);
		
		model.addAttribute("userinquiryList", uiqList);
		System.out.println(myInquiry.getMember_serial() + "번 유저의 문의리스트를 넘겨줍니다");
		
		return "/mypage/myInquiry";
	}
	
	//유저문의상세 
	@RequestMapping(value="/myInquiryDetail")
	public String getUserInquiryDetail(MyInquiry myInquiry, Model model, HttpServletRequest request) {
		System.out.println(">> 유저가 작성한 문의의 상세페이지 오픈 !");
		System.out.println("userInquiry : " + myInquiry);
		System.out.println("inquiry_serial : " + myInquiry.getInquiry_serial());
		
		MyInquiry uiq = myServive.getMyInquiry(myInquiry);
		
		if(uiq.getInquiry_re_content()!=null) {
			String answerDate = uiq.getInquiry_re_date().substring(0, 10);
			uiq.setInquiry_re_date(answerDate);

			Map<String, String> map = new HashMap<String, String>();
			map.put("inquiry_re_content", uiq.getInquiry_re_content());	
			map.put("inquiry_re_date", uiq.getInquiry_re_date());
			map.put("admin_name", uiq.getAdmin_name());	
			
			System.out.println("map : " + map);
			model.addAttribute("inquiryAnswer", map);
		}
		
		System.out.println("uiq : " + uiq);
		model.addAttribute("uiqDetail", uiq);
				
		System.out.println(myInquiry.getMember_serial() + "번 유저의 " + myInquiry.getInquiry_serial() + "번 문의를 넘겨줍니다");
		
		return "/mypage/myInquiryDetail";
	}
	
	
	//관리자의 유저문의리스트 출력페이지
	@RequestMapping(value="/getAdminInquiryList", method=RequestMethod.POST)
	public String getAdminInquiryList(MyInquiry myInquiry, Model model, HttpServletRequest request) {
		System.out.println(">> 관리자 : 유저문의리스트 출력페이지 !");
		
		List<MyInquiry> ListAll = null;
		String cPage = request.getParameter("cPage");
		
		Page p = new Page();
		
		if(myInquiry.getTypeSelect().equals(null)) {
			Map<String, String> map = new HashMap<String, String>();
			
			map = p.data0(p);
			ListAll = myServive.getAllInquiry(map);
		} else { //typeSelect가 있을 때	
			Map<String, String> map = new HashMap<String, String>();
			map.put("typeSelect", myInquiry.getTypeSelect());
			
			p = p.setPage(myServive.getInquiryCount(map), cPage, 10, 5);
			map = p.data1(p,myInquiry.getTypeSelect(),map);
			
			ListAll = myServive.getAllInquiry(map);
			model.addAttribute("AllUsersInquiry", ListAll);
		}
		
		model.addAttribute("AllUsersInquiry", ListAll);
		
		return "/mypage/adminInquiry";
	}
	
	//관리자의 유저문의 상세페이지
	@RequestMapping(value="/getAdminInquiryDetail")
	public String getAdminInquiryDetail(MyInquiry myInquiry, Model model, HttpServletRequest requetst) {
		System.out.println(">> 관리자 : 유저문의 상세페이지 !");
		
		MyInquiry uiq = myServive.getMyInquiry(myInquiry);
		model.addAttribute("uiqDetail", uiq);
		
		return "/mypage/adminInquiryDetail";
	}
	
	//관리자 문의답변입력
	@RequestMapping(value="/insertInquiryAnswer", method=RequestMethod.POST)
	public String insertInquiryAnswer(MyInquiry myInquiry) {
		System.out.println(">> 관리자 : 문의답변입력 !");

		myServive.insertAdminInquiryAnswer(myInquiry);
		
		return "/getAdminInquiryDetail";
	}
}
