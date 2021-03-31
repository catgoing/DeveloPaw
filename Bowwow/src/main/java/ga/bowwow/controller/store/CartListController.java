package ga.bowwow.controller.store;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ga.bowwow.service.store.CartList;
import ga.bowwow.service.store.CartListService;

@Controller
public class CartListController {
	
	@Autowired
	private CartListService cartListService;
	
	@RequestMapping(value = "/store/cartList")
	public String cartList(CartList cartList) {
		System.out.println("cartlist : " + cartList);
		return "cartList";
	}
	
	@RequestMapping(value = "/store/addCart")
	@ResponseBody
	public void addCartList(CartList cartList) {
		System.out.println("cartlist : " + cartList);
		
		cartList.setId("test");
		
		cartListService.addCartList(cartList);
		System.out.println("cartlist : " + cartList);
	}
	
	
}























