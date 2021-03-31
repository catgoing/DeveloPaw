package ga.bowwow.controller.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ga.bowwow.service.store.CartList;
import ga.bowwow.service.store.CartListService;

@Controller
public class CartListController {
	
	@Autowired
	private CartListService cartListService; 
	
	public CartListController() {
		System.out.println(">> CartListController() 실행");
	}
	
	// 장바구니 추가
	@RequestMapping(value = "/store/addCart")
	@ResponseBody
	public void addCartList(CartList cartList) {
		System.out.println("cartlist : " + cartList);
		
		cartList.setId("test");
		
		cartListService.addCartList(cartList);
		System.out.println("cartlist : " + cartList);
	}
	
	// 장바구니 리스트 조회
	@RequestMapping(value = "/store/cartList")
	public String getCartList(CartList cartList, Model model) {
		
		String id = "test";
		
		List<CartList> cart = cartListService.getCartList(id);
		model.addAttribute("cart", cart);
		
		return "cartList";
	}
	
	
}























