package ga.bowwow.controller.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserWallet;
import ga.bowwow.service.user.impl.UserWalletServiceImpl;

@Controller
@RequestMapping("/wallet")
public class UserWalletController extends UserCRUDGenericController<UserWallet>{
	
	public UserWalletController(@Autowired UserWalletServiceImpl service) {
		System.out.println("---->>> walletAccountController() 객체생성");
		this.service = service;
		setDomainRoute("/ok", "/auth.login");
	}
	
	@RequestMapping(value="/manageWallet") //CRUD페이지
	public String getWalletInfo() {
		System.out.println("test");
		return "/auth.myWallet";
	}

}
