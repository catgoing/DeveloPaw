package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ga.bowwow.service.store.CartListService;
import ga.bowwow.service.store.Order;
import ga.bowwow.service.store.OrderDTO;
import ga.bowwow.service.store.OrderDetail;
import ga.bowwow.service.store.StoreOrderService;
import ga.bowwow.service.user.VO.UserDTO;

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
	public String insertOrder(OrderDTO orderDTO, Order order, HttpServletRequest request, HttpSession session) throws IllegalStateException, IOException {
		System.out.println("order : "  + order);
		System.out.println(">>> 주문내역 작성 - insertOrder()");

		String order_status = "주문 완료";
		order.setOrder_status(order_status);

		request.setCharacterEncoding("utf-8");
		int inOr = storeOrderService.insertOrder(order);

		int result = 0;
		OrderDetail orderDetail;
		List<OrderDetail> orderList = new ArrayList<OrderDetail>();
		List<Integer> sum = new ArrayList<Integer>();
		int size = orderDTO.getP_id().size();
		
		int member_serial = ((UserDTO) session.getAttribute("userDTO")).getMember_serial();
		
		for (int i = 0; i < size; i++) {
			orderDetail = new OrderDetail();
			result = orderDTO.getPrice().get(i) * orderDTO.getAmount().get(i);
			orderDetail.setPrice(orderDTO.getPrice().get(i));
			orderDetail.setP_id(orderDTO.getP_id().get(i));
			orderDetail.setAmount(orderDTO.getAmount().get(i));
			orderDetail.setP_name(orderDTO.getP_name().get(i));
			orderList.add(orderDetail);
			sum.add(i, result);
			orderDetail.setSum(sum.get(i));
			System.out.println("orderList view ::" + orderList);
			System.out.println("order ::" + orderDetail);
			System.out.println("orderList " + i + "번째");
			storeOrderService.insertOrderDetail(orderDetail);
			System.out.println("임시 테이블에 저장" + orderDetail);
			
			if (inOr >= 1) {
				cartListService.OrderDelCart(order);
			}
		}

		return "redirect:/store/storeOrderList?member_serial=" + member_serial;
	}

	@RequestMapping(value = "/store/orderArr")
	public String insertOrderList(OrderDTO orderDTO, Model model, HttpSession session) throws Exception {
		
		int result = 0;
		int totalSum = 0;
		List<Order> orderList = new ArrayList<Order>();
		int size = orderDTO.getP_id().size();
		Order order;
		List<Integer> sum = new ArrayList<Integer>();
		for (int i = 0; i < size; i++) {
			order = new Order();
			result = orderDTO.getPrice().get(i) * orderDTO.getAmount().get(i);
			order.setPrice(orderDTO.getPrice().get(i));
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

		return "/store/storeOrderArr";
	}


	@RequestMapping(value = "/store/deleteOrder")
	public String deleteOrder(@RequestParam("order_id") int order_id, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IllegalStateException, IOException {
		int member_serial = ((UserDTO) session.getAttribute("userDTO")).getMember_serial();
		System.out.println(">>> 주문내역 삭제 - deleteOrder()");
		System.out.println(request.getParameter("order_id"));
		String o_id = request.getParameter("order_id");
		storeOrderService.deleteOrder(o_id);

		return "redirect:/store/storeOrderList?member_serial=" + member_serial;
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

		List<Order> od = storeOrderService.orderFromCartList(order_id);
		model.addAttribute("od", od);

		return "storeOrderDetail";
	}
	
	// 주문 상태 변경하기
	@RequestMapping(value = "/store/changeOrderStatus")
	public String changeOrderStatus(int order_id, HttpSession session) throws Exception {
		storeOrderService.changeOrderStatus(order_id);
		int member_serial = ((UserDTO) session.getAttribute("userDTO")).getMember_serial();
		return "redirect:/store/storeOrderList?member_serial=" + member_serial;
	}


	// 배송 시작시 재고 줄이기
	@RequestMapping(value = "/store/changeStock")
	public String changeStock(Order order, HttpSession session) throws Exception {
		storeOrderService.changeStock(order);
		int member_serial = ((UserDTO) session.getAttribute("userDTO")).getMember_serial();
		return "redirect:/store/storeOrderList?member_serial=" + member_serial;
	}
}
