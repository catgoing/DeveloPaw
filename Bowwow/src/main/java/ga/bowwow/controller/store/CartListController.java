package ga.bowwow.controller.store;

import java.util.HashMap;
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
	public Map<String, String> addCartList(CartList cartList) {
		
		Map<String, String> result = new HashMap<String, String>();

		cartList.setId("test2");
		int count = cartListService.cartCheck(cartList);
		
		if (count == 0) {
			cartListService.addCartList(cartList);
			result.put("msg", "장바구니에 상품이 추가되었습니다, 장바구니로 이동하시겠습니까?");
			result.put("code", "0000");
		} else {
			result.put("msg", "이미 동일한 상품이 장바구니에 있습니다, 장바구니로 이동하시겠습니까?");
			result.put("code", "9999");
		}
		
		return result;
	}
	
	// 장바구니 리스트 조회
	@RequestMapping(value = "/store/cartList")
	public String getCartList(CartList cartList, Model model) {
		
		String id = "test2";
		
		List<CartList> cart = cartListService.getCartList(id);
		model.addAttribute("cart", cart);
		
		return "/store/cartList";
	}
	
	// 장바구니 상품 삭제
	@RequestMapping(value = "/store/deleteCart")
	@ResponseBody
	public Map<String, Object> deleteCart(CartList cartList, Model model) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>(); 
		
		System.out.println("cartList :" + cartList);
		int result = cartListService.deleteCart(cartList);
		
		if (result == 1) {
			resultMap.put("msg", "장바구니에서 삭제되었습니다.");
			resultMap.put("code", "0000");
		} else {
			resultMap.put("msg", "오류가 발생하였습니다.");
			resultMap.put("code", "9999");
		}
		
		return resultMap;
	}
	
	
}























