package ga.bowwow.controller.user.impl;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserAddress;
import ga.bowwow.service.user.impl.UserAccountDAO;
import ga.bowwow.service.user.impl.UserAddressServiceImpl;

@Controller
@RequestMapping("/address")
public class UserAddressController extends UserCRUDGenericController<UserAddress, Integer, UserAddressServiceImpl>{
	public UserAddressController() {
		System.out.println("---->>> AddrAccountController() 객체생성");
		setDomainRoute("/ok", "/auth.login");
	}
	@RequestMapping(value="/manageAddress") //CRUD페이지
	public String getAddressInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "/auth.myAddress";
	}
	
	@Override
	protected List<UserAddress> list(UserAddress vo) {
		return null;
	}
}
