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
	public String getProductDetailCat(Product product, Model model, HttpServletRequest request) {
		
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("p_id : " + p_id);

		Product p = storeService.getProductDetailCat(p_id);
		model.addAttribute("p", p);
		System.out.println("product : " + product);
		
		return "productDetailCat";
	}
	
	// 상품 하나 출력(댕댕이)
	@RequestMapping(value = "/store/detailDog")
	public String getProductDetailDog(Product product, Model model, HttpServletRequest request) {
		
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("p_id : " + p_id);

		Product p = storeService.getProductDetailDog(p_id);
		model.addAttribute("p", p);
		System.out.println("product : " + product);
		
		return "productDetailDog";
	}
	
	// 댕댕이 상품 전체 출력
	@RequestMapping(value = "/store/dogList")
	public String getDogProductList(Product products, Model model) {
		List<Product> productList = storeService.getDogProductList(products);
		model.addAttribute("dogList", productList);
		
		return "dogList";
	}
	
	// 냥냥이 상품 전체 출력
	@RequestMapping(value = "/store/catList")
	public String getCatProductList(Product products, Model model) {
		List<Product> productList = storeService.getCatProductList(products);
		model.addAttribute("catList", productList);
		
		return "catList";
	}
	
	
	
}




























