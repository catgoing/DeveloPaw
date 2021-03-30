package ga.bowwow.controller.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.store.Products;
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
		return "store/storeMain";
	}
	
	// 댕댕이 상품 전체 출력
	@RequestMapping(value = "/store/dogList")
	public String getDogProductList(Products products, Model model) {
		List<Products> productList = storeService.getDogProductList(products);
		model.addAttribute("dogList", productList);
		
		return "dogList";
	}
	
	// 냥냥이 상품 전체 출력
	@RequestMapping(value = "/store/catList")
	public String getCatProductList(Products products, Model model) {
		List<Products> productList = storeService.getCatProductList(products);
		model.addAttribute("catList", productList);
		
		return "catList";
	}
	
	
	
}




























