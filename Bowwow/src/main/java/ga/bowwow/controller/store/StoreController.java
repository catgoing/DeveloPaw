package ga.bowwow.controller.store;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.store.Product;
import ga.bowwow.service.store.Review;
import ga.bowwow.service.store.StoreReviewService;
import ga.bowwow.service.store.StoreService;

@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private StoreReviewService storeReviewService;
	
	public StoreController() {
		System.out.println(">> StoreController() 실행");
	}

	@RequestMapping(value = "/store/storeMain")
	public String storeMain() {
		return "storeMain";
	}
	
	// 상품 상세 보기
	@RequestMapping(value = "/store/detail")
	public String getProductDetail(Model model, HttpServletRequest request) {
		System.out.println("p_id : " + request.getParameter("p_id"));
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		

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

	
}




























