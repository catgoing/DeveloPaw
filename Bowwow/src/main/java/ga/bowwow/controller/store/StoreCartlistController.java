package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.store.Cartlist;
import ga.bowwow.service.store.StoreCartlistService;

@Controller
public class StoreCartlistController {

	@Autowired
	private StoreCartlistService storeCartlistService;
	
	public StoreCartlistController() {
		System.out.println(">>> StoreCartlistController 실행");
	}
	
	// 장바구니에 추가
		@RequestMapping(value = "/store/insertCartlist")
		public void insertCartlist(Cartlist cartlist) {
			System.out.println(">>> 장바구니에 추가 - insertCartlist()");
			System.out.println("cartlist : " + cartlist);
			
			storeCartlistService.insertCartlist(cartlist);
		}
		

		// 장바구니 전체 목록 출력
		@RequestMapping(value = "/store/cartlist") 
		public String getCartlist(Cartlist cartlist, Model model, HttpServletRequest request){
			System.out.println("cartlist : " + cartlist);
			
			int member_serial = Integer.parseInt(request.getParameter("member_serial"));
			
			List<Cartlist> cartList = storeCartlistService.getCartList(cartlist);
			model.addAttribute("cartlist", cartList);
			
			return "cartList";
		}
		
		// 장바구니 삭제
		@RequestMapping(value = "/store/deleteCartlist")
		public void deleteCartlist(HttpServletRequest request, HttpServletResponse response) {
			System.out.println("deleteCartlist **** ");
			System.out.println(request.getParameter("cart_id"));
			int cart_id = Integer.parseInt(request.getParameter("cart_id"));
			storeCartlistService.deleteCartlist(cart_id);
			
			try {
				response.getWriter().print("success");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
}
