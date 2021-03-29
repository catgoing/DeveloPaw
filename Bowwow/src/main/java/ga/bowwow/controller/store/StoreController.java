package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.store.Cartlist;
import ga.bowwow.service.store.Inquiry;
import ga.bowwow.service.store.Product;
import ga.bowwow.service.store.Review;
import ga.bowwow.service.store.StoreCartlistService;
import ga.bowwow.service.store.StoreInquiryService;
import ga.bowwow.service.store.StoreOrderService;
import ga.bowwow.service.store.StoreReviewService;
import ga.bowwow.service.store.StoreService;

@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private StoreReviewService storeReviewService;
	
	@Autowired
	private StoreCartlistService storeCartlistService;
	
	@Autowired
	private StoreInquiryService storeInquiryService;
	
	
	
	
	public StoreController() {
		System.out.println(">> StoreController 실행");
	}

	@RequestMapping(value = "/store/storeMain")
	public String storeMain() {
		return "storeMain";
	}
	
	@RequestMapping(value = "/store/storeInquiry")
	public String storeInquiry() {
		return "storeInquiry";
	}
	
	// 상품 상세 보기
	@RequestMapping(value = "/store/detail")
	public String getProductDetailDog(Model model, HttpServletRequest request) {
		
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("p_id : " + p_id);

		Product p = storeService.getProductDetail(p_id);
		model.addAttribute("p", p);
		
		// 상품에 작성된 리뷰 리스트 출력
		List<Review> reviewList = storeReviewService.getReviewList(p_id);
		System.out.println(reviewList);
		model.addAttribute("reviewList", reviewList);
		
		return "productDetail";
	}
	
	// 상품 전체 출력
	@RequestMapping(value = "/store/productList")
	public String getProductList(Product product, Model model, HttpServletRequest request) {
		
		System.out.println("products " + product);
		
		if (product.getP_type().equals("dog")) {
			model.addAttribute("imgDir", "dogImg");
		} else if (product.getP_type().equals("cat")) {
			model.addAttribute("imgDir", "catImg");
		}
		
		List<Product> productList = storeService.getProductList(product);
		model.addAttribute("pList", productList);
		
		return "productList";
		
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
	
	
	// 장바구니에 추가
	@RequestMapping(value = "/store/insertCartlist")
	public void insertCartlist(Cartlist cartlist) {
		System.out.println(">>> 장바구니에 추가 - insertCartlist()");
		System.out.println("cartlist : " + cartlist);
		
		storeCartlistService.insertCartlist(cartlist);
	}
	

	// 장바구니 전체 목록 출력
	@RequestMapping(value = "/store/cartlist") 
	public String getCartlist(Cartlist cartlist, Model model, HttpServletRequest request){
		System.out.println("cartlist : " + cartlist);
		
		int member_serial = Integer.parseInt(request.getParameter("member_serial"));
		
		List<Cartlist> cartList = storeCartlistService.getCartList(member_serial);
		model.addAttribute("cartlist", cartList);
		
		return "cartList";
	}
	
	// 장바구니 삭제
	@RequestMapping(value = "/store/deleteCartlist")
	public void deleteCartlist(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("deleteCartlist **** ");
		System.out.println(request.getParameter("cart_id"));
		int cart_id = Integer.parseInt(request.getParameter("cart_id"));
		storeCartlistService.deleteCartlist(cart_id);
		
		try {
			response.getWriter().print("success");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
	
}




























