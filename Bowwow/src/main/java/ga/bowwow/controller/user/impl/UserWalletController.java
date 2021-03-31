package ga.bowwow.controller.user.impl;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserWallet;
import ga.bowwow.service.user.impl.UserWalletServiceImpl;

@Controller
@RequestMapping("/wallet")
public class UserWalletController extends UserCRUDGenericController<UserWallet, Integer, UserWalletServiceImpl>{
	
	public UserWalletController() {
		System.out.println("---->>> walletAccountController() 객체생성");
		setRoute("/ok", "/auth.login");
	}
	
	@RequestMapping(value="/manageWallet") //CRUD페이지
	public String getWalletInfo() {
		System.out.println("test");
		return "/auth.myWallet";
	}

	@Override
	protected List<UserWallet> list(UserWallet vo) {
		// TODO Auto-generated method stub
		return null;
	}
}
