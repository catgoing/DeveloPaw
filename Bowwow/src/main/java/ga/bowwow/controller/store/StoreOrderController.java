package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ga.bowwow.service.store.Order;
import ga.bowwow.service.store.StoreOrderService;

@Controller
public class StoreOrderController {

	@Autowired
	private StoreOrderService storeOrderService;

	public StoreOrderController() {
		System.out.println(">> StoreOrderController 실행");
	}

	@RequestMapping(value = "/store/storeOrder")
	public String storeOrder() {
		return "storeOrder";
	}

	// 주문내역 작성
	 @RequestMapping(value = "/store/insertOrder")
	 // default로 get방식 요청, post 선언을 해줘야 함
	 public String insertOrder(Order order, HttpServletRequest request) throws IllegalStateException, IOException { 
		 
	 System.out.println(">>> 주문내역 작성 - insertOrder()");
	 request.setCharacterEncoding("utf-8"); 
	  
	 storeOrderService.insertOrder(order);
	 
	 return "redirect:/store/storeOrderList?member_serial=999"; 
	 }
	 
	
	@RequestMapping(value = "/store/updateOrder")
	public String updateOrder(Order order, HttpServletRequest request) throws IllegalStateException, IOException {
		System.out.println(">>> 주문내역 수정 - updateOrder()");
		System.out.println("order : " + order);
		
		storeOrderService.updateOrder(order);

		return "storeOrderList";
	}

	@RequestMapping(value = "/store/deleteOrder")
	public void deleteOrder(HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {
		System.out.println(">>> 주문내역 삭제 - deleteOrder()");
		System.out.println(request.getParameter("o_id"));
		int o_id = Integer.parseInt(request.getParameter("o_id"));
		storeOrderService.deleteOrder(o_id);
		
		try {
			response.getWriter().print("success");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	// 주문내역 전체 출력
	@RequestMapping(value = "/store/storeOrderList")
	public String getOrderList(int member_serial, Model model, HttpServletRequest request) {

		System.out.println("member_serial " + member_serial);

		List<Order> orderList = storeOrderService.getOrderList(member_serial);
		model.addAttribute("orderList", orderList);

		return "storeOrderList";

	}

	// 주문내역 상세 보기
	@RequestMapping(value = "/store/storeOrderDetail")
	public String getOrderDetail(Model model, HttpServletRequest request) {

		int order_id = Integer.parseInt(request.getParameter("order_id"));
		System.out.println("order_id : " + order_id);

		Order o = storeOrderService.getOrderDetail(order_id);
		model.addAttribute("o", o);


		return "storeOrderDetail";
	}
	
	// 배송 시작시 재고 줄이기
	@RequestMapping(value ="/store/changeStock") 
	public String changeStock(Order order) throws Exception {
		storeOrderService.changeStock(order);
		
		return "storeOrderList";
	}
}
