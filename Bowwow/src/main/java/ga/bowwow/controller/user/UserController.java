package ga.bowwow.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.UserAccountService;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Controller
public class UserController {
	
	private UserAccountService userAccountService;

	@RequestMapping("getUserAccount")
	public String getUserAccount(@ModelAttribute("userAccount") UserAccount userAccount) {
		userAccountService.getUserAccount(userAccount);
		return null;
	}
}
