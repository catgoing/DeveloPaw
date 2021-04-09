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
import ga.bowwow.service.store.StoreService;

@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
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
		
		return "/store/productDetail";
	}
	
	// 상품 전체 출력
	@RequestMapping(value = "/store/productList")
	public String getProductList(Product product, Model model, HttpServletRequest request) {
		
		System.out.println("products " + product);
		String cPage = request.getParameter("cPage");
		
		if (product.getP_type().equals("dog")) {
			model.addAttribute("imgDir", "dogImg");
		} else if (product.getP_type().equals("cat")) {
			model.addAttribute("imgDir", "catImg");
		}
		
		Page p = new Page();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("p_type", product.getP_type());
		map.put("p_category", product.getP_category());
		
		
		p = p.setPage(storeService.getProductCount(map), cPage, 20, 10);
		map = p.data2(p, product.getP_type(), product.getP_category(), map);
		
		List<Product> productList = storeService.getProductList(map);
		
		model.addAttribute("pList", productList);
		model.addAttribute("pvo", p);
		model.addAttribute("p_type", product.getP_type());
		model.addAttribute("p_category", product.getP_category());
		
		return "/store/productList";
		
	}
	
	// 상품 검색
	@RequestMapping(value = "/store/searchProd")
	public String searchProd(Product product, Model model, HttpServletRequest request) {
		
		System.out.println("검색 : " + product);
		String cPage = request.getParameter("cPage");
		
		Page p = new Page();
		
		if (product.getKeyword() == null) {
			product.setKeyword("");
		}
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("keyword", product.getKeyword());
		
		p = p.setPage(storeService.getSearchCount(map), cPage, 20, 10);
		map = p.data1(p, product.getKeyword(), map);
		
		List<Product> searchProd = storeService.prodSearch(map);
		
		model.addAttribute("pSearch", searchProd);
		model.addAttribute("pvo", p);
		model.addAttribute("keyword", product.getKeyword());
		model.addAttribute("command", "/store/searchProd");
	
		return "/store/storeSearch";
	}

	
}




























