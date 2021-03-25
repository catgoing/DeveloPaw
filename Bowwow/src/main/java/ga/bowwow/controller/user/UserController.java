package ga.bowwow.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.UserAccountService;
import lombok.NoArgsConstructor;

@Controller
public class UserController {
	@Autowired
	private UserAccountService userAccountService;
	
	public UserController() {
		System.out.println("---->>> BoardController() 객체생성");
		System.out.println("> userAccountService : " + userAccountService); //null
	}
	
	@RequestMapping(value="/auth/getUserAccount.do")
	public String getUserAccount(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "login";
	}
}
