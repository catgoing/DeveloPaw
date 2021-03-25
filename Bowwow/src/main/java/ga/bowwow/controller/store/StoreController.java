package ga.bowwow.controller.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.store.Products;
import ga.bowwow.service.store.StoreService;

@Controller
//@RequestMapping("/store")
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	public StoreController() {
		System.out.println(">> StoreController 실행");
	}
	
	@RequestMapping(value = "/getProductList.do")
	public String getProductList(Products products, Model model) {
		List<Products> productList = storeService.getProductsList(products);
		
		System.out.println("produects?" + products);
		
		model.addAttribute("productList", productList);
		
		return "productList.jsp";
	}
	
	@RequestMapping(value = "main")
	public String getMain() {
		return "storeMain.jsp";
	}
	
	@RequestMapping("/test")
	public String getTest() {
		return "hello";
	}
	
	
}




























