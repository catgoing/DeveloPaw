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
import ga.bowwow.service.store.Product;
import ga.bowwow.service.store.StoreService;
import ga.bowwow.service.user.VO.UserDTO;
import ga.bowwow.service.userpage.MyInquiry;
import ga.bowwow.service.userpage.MyInquiryService;

@Controller
@SessionAttributes({"userinquiryList","uiqDetail","AllUsersInquiry"})
public class InquiryController {
	
	@Autowired
	private MyInquiryService myServive;
	@Autowired
	private StoreService storeService;
	
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
	
	//유저문의리스트(본인문의)
	@RequestMapping(value="/getUserInquiryList")
	public String getUserInquiryList(MyInquiry myInquiry, Model model, HttpServletRequest request) {
		System.out.println(">> 로그인한 유저의 문의 리스트를 가져옵니다. !");
		System.out.println("userInquiry : " + myInquiry);
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		
		System.out.println("member_serial : " + member_serial);
		System.out.println("겟 상품번호 : " + myInquiry.getP_id());
		
		//상품문의 - 상품번호 들어왔을때-_-..
		Integer p_id = myInquiry.getP_id();
		if (isPIdNotNull(p_id)) {
			addProductDetail(model, p_id);
		}
		
		//문의유형 null아닐때
		String typeSelect = "";
		if (myInquiry.getTypeSelect() != null && myInquiry.getTypeSelect().length() != 0) {
			typeSelect = myInquiry.getTypeSelect();
		}
		
		//페이징처리
		String cPage = request.getParameter("cPage");
		Page p = new Page();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_serial", member_serial);
		map.put("typeSelect", myInquiry.getTypeSelect());
		
		p = p.setPage(myServive.getMyInquiryCount(map), cPage, 10, 5);
		map = p.data22(p, member_serial, myInquiry.getTypeSelect(), map);
		
		List<MyInquiry> uiqList = myServive.getMyInquiryList(map);
		
		model.addAttribute("userinquiryList", uiqList);
		model.addAttribute("member_serial", member_serial);
		model.addAttribute("typeSelect", typeSelect);
		model.addAttribute("pvo", p);
		model.addAttribute("command","/getUserInquiryList");
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
		
		//상품문의 - 상품번호 들어왔을때-_-....
		Integer p_id = myInquiry.getP_id();
		if (isPIdNotNull(p_id)) {
			addProductDetail(model, p_id);
		}
		
		//관리자 답변이 등록됐을 때		
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
	@RequestMapping(value="/getAdminInquiryList")
	public String getAdminInquiryList(MyInquiry myInquiry, Model model, HttpServletRequest request) {
		System.out.println(">> 관리자 : 유저문의리스트 출력페이지 !");
		
		//문의유형 null아닐때
		String typeSelect = "";
		if (myInquiry.getTypeSelect() != null && myInquiry.getTypeSelect().length() != 0) {
			typeSelect = myInquiry.getTypeSelect();
		}
		
		//페이징처리
		String cPage = request.getParameter("cPage");
		Page p = new Page();
		Map<String, String> map = new HashMap<String, String>();
		map.put("typeSelect", myInquiry.getTypeSelect());
		
		p = p.setPage(myServive.getAllInquiryCount(map), cPage, 10, 5);
		map = p.data1(p, myInquiry.getTypeSelect(), map);
		
		List<MyInquiry> ListAll = myServive.getAllInquiry(map);
		
		model.addAttribute("AllUsersInquiry", ListAll);
		model.addAttribute("typeSelect", typeSelect);
		model.addAttribute("pvo", p);
		model.addAttribute("command","/getAdminInquiryList");
		
		return "/mypage/adminInquiry";
	}
	
	//관리자의 유저문의 상세페이지
	@RequestMapping(value="/getAdminInquiryDetail")
	public String getAdminInquiryDetail(MyInquiry myInquiry, Model model, HttpServletRequest requetst) {
		System.out.println(">> 관리자 : 유저문의 상세페이지 !");
		
		//상품번호 들어왔을때-_-..
		Integer p_id = myInquiry.getP_id();
		if (isPIdNotNull(p_id)) {
			addProductDetail(model, p_id);
		}
		
		MyInquiry uiq = myServive.getMyInquiry(myInquiry);
		model.addAttribute("uiqDetail", uiq);
		
		return "/mypage/adminInquiryDetail";
	}

	//상품번호로 상품상세정보 불러온 후 model에 저장
	private void addProductDetail(Model model, Integer p_id) {
		Product targetProduct = storeService.getProductDetail(p_id);
		if(targetProduct!=null&&targetProduct.getP_type().equals("cat")) {
			model.addAttribute("foldername", "catImg");
		} else if(targetProduct!=null&&targetProduct.getP_type().equals("dog")) {
			model.addAttribute("foldername", "dogImg");				
		} 
		model.addAttribute("targetProduct", targetProduct);			
	}
	
	//상품번호null체크
	public boolean isPIdNotNull(Integer p_id) {
		return (p_id != null && p_id != 0) ? true : false;
	}
	
	//관리자 문의답변입력
	@RequestMapping(value="/insertInquiryAnswer", method=RequestMethod.POST)
	public String insertInquiryAnswer(MyInquiry myInquiry) {
		System.out.println(">> 관리자 : 문의답변입력 !");

		myServive.insertAdminInquiryAnswer(myInquiry);
		
		return "/getAdminInquiryDetail";
	}
}
