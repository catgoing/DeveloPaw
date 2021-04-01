package ga.bowwow.controller.store;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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
	public Map addCartList(CartList cartList) {
		Map<String, String> returnMap = new HashMap<String, String>();
		System.out.println("cartlist : " + cartList);
		
		cartList.setId("test");
		
		String id = cartList.getId();
		List<CartList> check = cartListService.pIdCheck(id);
		
		Iterator iter = check.iterator();
		while (iter.hasNext()) {
			int prodNum = (int) iter.next();
			if (cartList.getP_id() == prodNum) {
				returnMap.put("result", "error");
				return returnMap;
				
			} else {
				returnMap.put("result", "empty");
				return returnMap;
			}
		}
		
		return returnMap;
		
//		cartListService.addCartList(cartList);
//		System.out.println("cartlist : " + cartList);
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























