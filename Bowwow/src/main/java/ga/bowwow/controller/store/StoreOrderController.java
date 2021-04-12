package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ga.bowwow.service.store.CartListService;
import ga.bowwow.service.store.Order;
import ga.bowwow.service.store.OrderDTO;
import ga.bowwow.service.store.StoreOrderService;

@Controller
public class StoreOrderController {

	@Autowired
	private StoreOrderService storeOrderService;
	
	@Autowired
	private CartListService cartListService;
	
	public StoreOrderController() {
		System.out.println(">> StoreOrderController 실행");
	}
	
	@RequestMapping(value = "/store/moveOrder") 
	public String moveOrder() {
		return "/store/storeOrder";
	}
	
	
	@RequestMapping(value = "/store/storeOrder")
	public String storeOrder(Order order, Model model) {
		System.out.println("order : " + order);
		model.addAttribute("order", order);
		
		
		return "/store/storeOrder";
	}
	

	// 주문내역 작성
	@RequestMapping(value = "/store/insertOrder")
	// default로 get방식 요청, post 선언을 해줘야 함
	public String insertOrder(Order order, HttpServletRequest request) throws IllegalStateException, IOException {
		System.out.println("order : "  + order);
		System.out.println(">>> 주문내역 작성 - insertOrder()");
		
		List<Order> list = new ArrayList<Order>();
		
		request.setCharacterEncoding("utf-8");
		storeOrderService.insertOrder(order);
		
		
		return "redirect:/store/storeOrderList?member_serial=999";
	}

	
	@RequestMapping(value = "/store/updateOrder") 
	public String updateOrder(Order order, HttpServletRequest request) throws IllegalStateException, IOException{ 
		System.out.println(">>> 주문내역 수정 - updateOrder()");
		System.out.println("order : " + order);
	
		storeOrderService.updateOrder(order);
	 
		return "storeOrderList"; 
	}
	
	@RequestMapping(value = "/store/orderArr")
	public String insertOrderList(OrderDTO orderDTO, Model model) throws Exception {
		String id = "test2";
		
		int result = 0;
		int totalSum = 0;
		List<Order> orderList = new ArrayList<Order>();
		int size = orderDTO.getP_id().size();
		Order order;
		List<Integer> sum = new ArrayList<Integer>();
		for (int i = 0; i < size; i++) {
			order = new Order();
			result = orderDTO.getPrice().get(i) * orderDTO.getAmount().get(i);
			order.setP_id(orderDTO.getP_id().get(i));
			order.setAmount(orderDTO.getAmount().get(i));
			order.setP_name(orderDTO.getP_name().get(i));
			order.setS_image(orderDTO.getS_image().get(i));
			order.setP_type(orderDTO.getP_type().get(i));
			orderList.add(order);
			System.out.println("orderList view ::" + orderList);
			System.out.println("order ::" + order);
			System.out.println("orderList " + i + "번째");
			sum.add(i, result);
			order.setSum(sum.get(i));
			totalSum += result;
		}
		
		
		System.out.println("totalSum : " + totalSum);
		System.out.println("sum : " + sum);
		model.addAttribute("sum", sum);
		model.addAttribute("totalSum", totalSum);
		model.addAttribute("order", orderList);
		
		
		System.out.println("장바구니 삭제");
		return "/store/storeOrderArr";
	}
	
	
	@RequestMapping(value = "/store/deleteOrder")
	public String deleteOrder(@RequestParam("order_id") int order_id, HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {
		System.out.println(">>> 주문내역 삭제 - deleteOrder()");
		System.out.println(request.getParameter("order_id"));
		String o_id = request.getParameter("order_id");
		storeOrderService.deleteOrder(o_id);

		return "redirect:/store/storeOrderList?member_serial=999";
	}

	// 주문내역 전체 출력
	@RequestMapping(value = "/store/storeOrderList")
	public String getOrderList(Order order, Model model, HttpServletRequest request) {

		System.out.println("order " + order);

		List<Order> orderList = storeOrderService.getOrderList(order);
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
	
	// 주문 상태 변경하기
	@RequestMapping(value = "/store/changeOrderStatus")
	public String changeOrderStatus(int order_id) throws Exception {
		storeOrderService.changeOrderStatus(order_id);
		
		return "redirect:/store/storeOrderList?member_serial=999";
	}
	
	
	// 배송 시작시 재고 줄이기
	@RequestMapping(value = "/store/changeStock")
	public String changeStock(Order order) throws Exception {
		storeOrderService.changeStock(order);
		
		return "redirect:/store/storeOrderList?member_serial=999";
	}
}
