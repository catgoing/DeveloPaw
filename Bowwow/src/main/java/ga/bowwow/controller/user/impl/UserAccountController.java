package ga.bowwow.controller.user.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.impl.UserAccountServiceImpl;

@Controller
@SessionAttributes("userDTO")
@RequestMapping("/account")
public class UserAccountController extends UserCRUDGenericController<UserAccount> {
	
	public UserAccountController(@Autowired UserAccountServiceImpl service) {
		System.out.println("---->>> UserAccountController() 객체생성");
		this.service = service;
		this.setDomainRoute("/ok", "/auth.login");
	}
//	
//	@RequestMapping("/addAcountAddressList")
//	protected String add(UserAccount vo, List<UserAddress> userAddressList)  {
//		try {
//			System.out.println("controller : " + vo);
//			System.out.println(userAddressList);
////			return router(service.addVo(vo), resolveRoute, errorRoute);
//			return "/auth.myAccount";
//		} catch (DataIntegrityViolationException  e) { // 이게 안 잡힘?
//			System.out.println("Caught Integerity Exception Test");
//			e.printStackTrace();
//		} catch (TooManyResultsException e) {
//			e.printStackTrace();
//		}
//		return "/ok";
//	}
	
//	@GetMapping("/getList")
//	protected String getList(@ModelAttribute ArrayList<UserAccount> userDtoList, Model model) {
//		System.out.println("GETLIST RESOLVING TEST");
//		userDtoList = (ArrayList<UserAccount>) service.getVoList();
//		model.addAttribute("userDtoList", userDtoList);
//		System.out.println(userDtoList);
//		return "/auth.userList";
//	}

	//TODO 일관된 resolve/error 리턴 환경 만들 수 있는가?
	//TODO =>DI하는 식으로, 실패시 돌아가는 경로를 담은 리스트를 쓴다? -> 클래스가 될 수도 있음.
	//TODO =>일반적으로, 1. 실패하는 경우는 자기 자신으로 돌아감. 2. 부모로 돌아감.(트랜잭션의 시작지점?) <-이게 클래스의 생성자 타입이 될 수 있음.
	//TODO =>DB에서 찾아올 때, 실패하길 원하는가, 성공하길 원하는가?가 클래스의 생성자 두번째일 수 있음.
	//TODO =>트랜잭션이란, 결국에 2+개의 boolean을 and처리한 결과임.

	@RequestMapping(value="/signupAccount") //CRUD페이지
	public String getUserInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "/auth.myAccount";
	}
	@RequestMapping(value="/login")
	public String getUserAccount(@ModelAttribute("userAccount") UserAccount userAccount, Model model) {
		boolean result = ((UserAccountServiceImpl)this.service).loginAttemp(userAccount);
		System.out.println("loginController TEST");
		System.out.println(userAccount);
		System.out.println(model);
		if(result) model.addAttribute("userDTO", userAccount);
		System.out.println(result);
		return result ? "redirect:/store/storeMain" : "/auth.login";
	}
	@RequestMapping(value="/logout")
	public String getUserAccount(@Autowired HttpSession session) {
		session.invalidate();
		return "/store/storeMain";
	}
	@RequestMapping(value="/signup")
	public String confirmUserTerms() {
		return "/auth.terms";
	}
	@RequestMapping(value="/loginSuccess")
	public String confirmLogin() {
		return "/ok2";
	}
	@RequestMapping(value="/getAccount")
	public UserAccount getUserFromDB(@ModelAttribute("userAccount") UserAccount userAccount) {
		return super.get(userAccount);
	}

	//TODO 해당domain의 기본형 resolve/error를 구현할 필요가 있음
	private String simpleOkPageDistributor(boolean isOK) {
		return (isOK) ? "/ok" : "failedRoute <- usually itself";
	}

	//legacy
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
			
}
