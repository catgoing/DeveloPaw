package ga.bowwow.controller.store;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.store.Order;
import ga.bowwow.service.store.Product;
import ga.bowwow.service.store.Review;
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

	@RequestMapping(value = "/store/insertOrder")
	public String insertOrder(Order order) throws IllegalStateException, IOException {
		System.out.println(">>> 주문내역 작성 - insertOrder()");
		System.out.println("order : " + order);

		storeOrderService.insertOrder(order);

		return "storeOrderList";
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
}
