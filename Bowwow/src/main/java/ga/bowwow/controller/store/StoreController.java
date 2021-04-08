package ga.bowwow.controller.store;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.paging.Page;
import ga.bowwow.service.store.Product;
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
		
		/*
		 * // 상품에 작성된 리뷰 리스트 출력 List<Review> reviewList =
		 * storeReviewService.getReviewList(p_id); System.out.println(reviewList);
		 * model.addAttribute("reviewList", reviewList);
		 */
		
		return "productDetail";
	}
	
	// 상품 전체 출력
	@RequestMapping(value = "/store/productList")
	public String getProductList(Product product, Model model, HttpServletRequest request) {
		
		System.out.println("products " + product);
		
		//cPage : 페이지 번호, jsp에서 get 방식으로 전달받아 String cPage에 저장
		String cPage = request.getParameter("cPage");
		
		if (product.getP_type().equals("dog")) {
			model.addAttribute("imgDir", "dogImg");
		} else if (product.getP_type().equals("cat")) {
			model.addAttribute("imgDir", "catImg");
		}
		
		
//		int count = storeService.getProductCount(map);
//		System.out.println("count: " + count);
		
		//map객체에 총 개수 획득에 필요한 데이터 입력
		Page page = new Page();
		Map<String, String> map = new HashMap<String, String>();
		map.put("p_type", product.getP_type());
		map.put("p_category", product.getP_category());
		
		// autowired로 생성된 Page 객체에 (총 데이터 개수, 페이지 넘버, 한 페이지에 출력할 게시물 수, 페이징 버튼 개수) 입력
		// -> 페이지 별 begin, end값 구하기 위한 작업
		page = page.setPage(storeService.getProductCount(map), cPage, 4, 10);

		//map에 다시 begin, end  생성된 Page객체와 리스트 획득에 필요한 데이터 입력 
		map = page.data2(page, product.getP_type(), product.getP_category());
		
		System.out.println(product.getP_type() + " " + product.getP_category());
		
		//map을 이용해 최종 데이터 획득
		List<Product> productList = storeService.getProductList(map);
		
		System.out.println("list : " + productList);
		for ( String key : map.keySet() ) {
		    System.out.println("방법1) key : " + key +" / value : " + map.get(key));
		}
		
		
		model.addAttribute("pList", productList);
		model.addAttribute("pvo", page);
		model.addAttribute("command", "/store/productList");
		model.addAttribute("p_type", product.getP_type());
		model.addAttribute("p_category", product.getP_category());
		
		return "productList";
		
	}

	
}




























