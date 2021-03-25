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
	
	@RequestMapping(value = "/store/dogList.do")
	public String getDogProductList(Products products, Model model) {
		List<Products> productList = storeService.getDogProductList(products);
		model.addAttribute("dogList", productList);
		
		return "dogList";
	}
	
	@RequestMapping(value = "/store/catList.do")
	public String getCatProductList(Products products, Model model) {
		List<Products> productList = storeService.getCatProductList(products);
		model.addAttribute("catList", productList);
		
		return "catList";
	}
	
	@RequestMapping(value = "/store/storeMain.do")
	public String storeMain() {
		return "storeMain";
	}
	
	
}




























