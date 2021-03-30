package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.store.Inquiry;
import ga.bowwow.service.store.StoreInquiryService;

@Controller
public class StoreInquiryController {
	@Autowired
	private StoreInquiryService storeInquiryService;
	
	public StoreInquiryController() {
		System.out.println(">>>> StoreInquiryController 실행");
	}
	
	@RequestMapping(value = "/store/storeInquiry")
	public String storeInquiry() {
		return "storeInquiry";
	}
	
	// 문의 작성
		@RequestMapping("/store/insertInquiry")
		public void insertInquiry(Inquiry inquiry, HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {
			
			System.out.println(">>> 문의 작성 - insertInquiry()");
			System.out.println("inquiry : " + inquiry);
			System.out.println(inquiry.getInquiry_no());		
			// 메소드 호출
			storeInquiryService.insertInquiry(inquiry);
			
			try {
				response.getWriter().print("success");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		

		}
		
		// 문의 삭제
		@RequestMapping(value = "/store/deleteInquiry")
		public void getDeleteInquiry(HttpServletRequest request, HttpServletResponse response) {
			System.out.println("deleteInquiry **** ");
			System.out.println(request.getParameter("inquiry_no"));
			int inquiry_no = Integer.parseInt(request.getParameter("inquiry_no"));
			storeInquiryService.deleteInquiry(inquiry_no);
			
			try {
				response.getWriter().print("success");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		// 문의 전체 목록 출력
		@RequestMapping(value = "/store/inquiryList") 
		public String getInquiryList(Inquiry inquiry, Model model, HttpServletRequest request){
			System.out.println("inquiry : " + inquiry);
			
			List<Inquiry> inquiryList = storeInquiryService.getInquiryList(inquiry);
			model.addAttribute("inquiryList", inquiryList);
			
			return "inquiryList";
		}
}
