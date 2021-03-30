package ga.bowwow.controller.user.impl;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.impl.UserAccountServiceImpl;

@Controller
@RequestMapping("/account")
public class UserAccountController extends UserCRUDGenericController<UserAccount, Integer, UserAccountServiceImpl> {
	
	public UserAccountController() {
		System.out.println("---->>> UserAccountController() 객체생성");
	}
	//TODO 일관된 resolve/error 리턴 환경 만들 수 있는가?
	//TODO =>DI하는 식으로, 실패시 돌아가는 경로를 담은 리스트를 쓴다? -> 클래스가 될 수도 있음.
	//TODO =>일반적으로, 1. 실패하는 경우는 자기 자신으로 돌아감. 2. 부모로 돌아감.(트랜잭션의 시작지점?) <-이게 클래스의 생성자 타입이 될 수 있음.
	//TODO =>DB에서 찾아올 때, 실패하길 원하는가, 성공하길 원하는가?가 클래스의 생성자 두번째일 수 있음.
	//TODO =>트랜잭션이란, 결국에 2+개의 boolean을 and처리한 결과임.
	
	@RequestMapping(value="/login")
	public String getUserAccount(@ModelAttribute("userAccount") UserAccount userAccount) {
		return (super.service.loginAttemp(userAccount))? "/ok" : "/auth.login";
	}
	@RequestMapping(value="/signupDetail")
	public String getUserInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "/auth.myInfo";
	}
	@RequestMapping(value="/signup")
	public String confirmUserTerms() {
		return "/auth.terms";
	}
	@RequestMapping(value="/modifyUser")
	public String modifyUserInDB(@ModelAttribute("userAccount") UserAccount userAccount) {
		return super.update(userAccount, "/ok", "/auth.login");
	}
	@RequestMapping(value="/registUser")
	public String registUserToDB(@ModelAttribute("userAccount") UserAccount userAccount) {
		return super.add(userAccount, "/ok" , "/auth.login");
	}
	@RequestMapping(value="/deleteUser")
	public String deleteUserFromDB(@ModelAttribute("userAccount") UserAccount userAccount) {
		return super.delete(userAccount, "/ok", "/auth.login");
	}	
	@RequestMapping(value="/getUser")
	public UserAccount getUserFromDB(@ModelAttribute("userAccount") UserAccount userAccount) {
		return super.get(userAccount);
	}
	
	//TODO 컨트롤러가 너무 구체적인 작업을 하고 있음, GENERICCONTROLLER를 사용하지 않고 있음. 파이프라인 정도의 역할만 해아함.
	private String simpleOkPageDistributor(boolean isOK) {
		return (isOK) ? "/ok" : "failedRoute <- usually itself";
	}

	@Override
	public List<UserAccount> list(UserAccount vo) {
		return null;
	}
	@RequestMapping(value="/ok")
	public String okay() {
		return "/auth.login";
	}
}
