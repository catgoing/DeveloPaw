package ga.bowwow.controller.userpage;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserPageController {
	
	public UserPageController() {
		System.out.println("유저페이지컨트롤러");
	}
	
	@RequestMapping(value="/getMyPoint")
	public Map<String, Object> getMyPoint() {
		Map<String, Object> map = UserAccount.searchMyPoint();
		System.out.println(map);
	}
	
	
	
}
