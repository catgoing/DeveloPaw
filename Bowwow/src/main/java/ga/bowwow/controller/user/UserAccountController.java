package ga.bowwow.controller.user;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.impl.UserAccountServiceImpl;

@Controller
@RequestMapping("account")
public class UserAccountController extends UserCRUDGenericController<UserAccount, Integer, UserAccountServiceImpl> {

	public UserAccountController() {
		System.out.println("---->>> UserAccountController() 객체생성");
	}
	
	@RequestMapping(value="/getUserAccount")
	public String getUserAccount(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "login";
	}

	@Override
	public List<UserAccount> list(UserAccount vo) {
		return null;
	}
	
	@RequestMapping(value="/ok")
	public String okay() {
		return "/auth";
	}
}
