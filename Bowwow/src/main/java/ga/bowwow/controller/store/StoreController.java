package ga.bowwow.controller.store;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.store.Product;
import ga.bowwow.service.store.StoreService;

@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	public StoreController() {
		System.out.println(">> StoreController 실행");
	}

	@RequestMapping(value = "/store/storeMain")
	public String storeMain() {
		return "storeMain";
	}
	
	// 상품 하나 출력(냥냥이)
	@RequestMapping(value = "/store/detailCat")
	public String getProductDetailCat(Model model, HttpServletRequest request) {
		
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("p_id : " + p_id);

		Product p = storeService.getProductDetailCat(p_id);
		model.addAttribute("p", p);
		
		return "productDetailCat";
	}
	
	// 상품 하나 출력(댕댕이)
	@RequestMapping(value = "/store/detailDog")
	public String getProductDetailDog(Model model, HttpServletRequest request) {
		
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("p_id : " + p_id);

		Product p = storeService.getProductDetailDog(p_id);
		model.addAttribute("p", p);
		
		return "productDetailDog";
	}
	
	// 상품 전체 출력
	@RequestMapping(value = "/store/productList")
	public String getProductList(Product products, Model model, HttpServletRequest request) {
		String p_type = request.getParameter("p_type");

		List<Product> productList = storeService.getProductList(p_type);
		model.addAttribute("pList", productList);
		
		System.out.println("type : " + p_type);
		System.out.println("getP_type() : " + products.getP_type());

		if (p_type.equals("dog")) {
			return "dogList";
			
		} else if (p_type.equals("cat")) {
			return "catList";
			
		} else {
			return null;
		}
	}
}




























