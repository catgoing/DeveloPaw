package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.store.Review;
import ga.bowwow.service.store.StoreReviewService;

@Controller
public class StoreReviewController {
	
	@Autowired
	private StoreReviewService storeReviewService;
	
	public StoreReviewController() {
		System.out.println(">> StoreReviewController 실행");
	}

	@RequestMapping(value = "/store/updateTest")
	public String storeUpdate() {
		return "updateTest";
	}
	
	// 리뷰 작성
		@RequestMapping("/store/insertReview")
		public void insertReview(Review review, HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {
			HashMap<String, String> map = new HashMap<String, String>();
			
			System.out.println(">>> 리뷰 작성 - insertReview()");
			System.out.println("review : " + review);
			System.out.println(review.getP_id());		
			// 메소드 호출
			storeReviewService.insertReview(review);
			
			// 가장 마지막에 작성된 리뷰 조회
			
			Review lastNum = storeReviewService.getLastReview(review.getP_id());
			map.put("test", lastNum.getReview_title());
			System.out.println("----------------------");
			System.out.println(lastNum.getReview_id());
			
			try {
				response.getWriter().print(map);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		

			//return "redirect:detail?p_id=" + review.getP_id();
		}	
		
		// 리뷰 삭제
		@RequestMapping(value = "/store/deleteReview")
		public void getDeleteReview(HttpServletRequest request, HttpServletResponse response) {
			System.out.println("deleteReview **** ");
			System.out.println(request.getParameter("r_id"));
			int review_id = Integer.parseInt(request.getParameter("r_id"));
			storeReviewService.deleteReview(review_id);
			
			try {
				response.getWriter().print("success");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
}
