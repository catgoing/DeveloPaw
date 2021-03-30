package ga.bowwow.controller.store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartListController {
	
	@RequestMapping(value = "/store/cartList")
	public String cartList() {
		return "cartList";
	}
	
	

}
