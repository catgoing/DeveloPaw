package ga.bowwow.controller.userpage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.service.store.Order;
import ga.bowwow.service.userpage.UserPointService;

@Controller
@SessionAttributes("pointList")
public class UserPageController {
	
	@Autowired
	UserPointService uPointService;
	
	public UserPageController() {
		System.out.println("유저페이지컨트롤러");
	}
	
	@RequestMapping(value="/getMyPointList")
	public String getMyPointList(Order order, Model model, HttpServletRequest request) {
		System.out.println("getMyPointList");
		System.out.println("order : " + order);
		List<Order> pointList = uPointService.getUserPointList(order);
		
		model.addAttribute("pointList", pointList);
		
		return "/mypage/myPoint";
	}
	
	
}
