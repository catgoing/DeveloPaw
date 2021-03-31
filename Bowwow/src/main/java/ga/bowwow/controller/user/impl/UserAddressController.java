package ga.bowwow.controller.user.impl;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.UserAddress;
import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.impl.UserAddressServiceImpl;

@Controller
@RequestMapping("/address")
public class UserAddressController extends UserCRUDGenericController<UserAddress, Integer, UserAddressServiceImpl>{
	public UserAddressController() {
		System.out.println("---->>> AddrAccountController() 객체생성");
		setRoute("/ok", "/auth.login");
	}
	
	@RequestMapping(value="/manageAddress") //CRUD페이지
	public String getUserInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "/auth.myInfo2";
	}
	
	@Override
	protected List<UserAddress> list(UserAddress vo) {
		return null;
	}
	
	//legacy
				@RequestMapping(value="/registAddr")
				public String registAddrToDB(@ModelAttribute("addrAccount") UserAddress addracount) {
					return super.add(addracount, "/ok" , "/auth.login");
				}
}
