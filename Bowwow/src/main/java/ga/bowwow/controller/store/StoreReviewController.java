package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ga.bowwow.service.store.Review;
import ga.bowwow.service.store.StoreReviewService;

@Controller
public class StoreReviewController {
	
	@Autowired
	private StoreReviewService storeReviewService;
	
	public StoreReviewController() {
		System.out.println(">> StoreReviewController 실행");
	}
	
	// 상품 소감(댓글) 목록
		@ResponseBody
		@RequestMapping(value = "/store/reviewList", method = RequestMethod.GET)
		public List<Review> getReviewList(@RequestParam(value="p_id", required=false) int p_id, Model model) throws Exception {
			List<Review> reviewList = storeReviewService.getReviewList(p_id);
			System.out.println(reviewList);
			model.addAttribute("reviewList", reviewList);
			return reviewList;
		}
	
	// 리뷰 작성
		@RequestMapping("/store/insertReview")
		@ResponseBody
		public Map<String, Object> insertReview(Review review, HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {
			Map<String, Object> map = new HashMap<String, Object>();
			
			System.out.println(">>> 리뷰 작성 - insertReview()");
			System.out.println("review : " + review);
			System.out.println(review.getP_id());		
			
			int result = storeReviewService.insertReview(review);
			
			if(result >= 1) {
				map.put("msg","등록되었습니다");
				map.put("code", "0000");
				map.put("revId", review.getReview_id());
				map.put("revTitle", review.getReview_title());
				map.put("revContent", review.getReview_content());
				map.put("revRegdate", review.getReview_regdate());
			} else {
				map.put("msg","오류발생");
				map.put("code", "9999");
			}
			
			return map; 
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
