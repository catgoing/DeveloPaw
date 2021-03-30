package ga.bowwow.controller.user.impl;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.controller.user.AddrCRUDGenericController;
import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.AddrAccount;
import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.impl.AddrAccountServiceImpl;
import ga.bowwow.service.user.impl.UserAccountServiceImpl;

@Controller
@RequestMapping("/address")
public class AddrAccountController extends AddrCRUDGenericController<AddrAccount, Integer, AddrAccountServiceImpl>{
	
	public AddrAccountController() {
		System.out.println("---->>> AddrAccountController() 객체생성");
	}
	@RequestMapping(value="/registAddr")
	public String registAddrToDB(@ModelAttribute("addrAccount") AddrAccount addracount) {
		return super.add(addracount, "/ok" , "/auth.login");
	}
	@Override
	protected List<AddrAccount> list(AddrAccount vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//TODO 컨트롤러가 너무 구체적인 작업을 하고 있음, GENERICCONTROLLER를 사용하지 않고 있음. 파이프라인 정도의 역할만 해아함.
	private String simpleOkPageDistributor(boolean isOK) {
		return (isOK) ? "/ok" : "failedRoute <- usually itself";
	}
	@RequestMapping(value="/ok")
	public String okay() {
		return "/auth.login";
	}
}
