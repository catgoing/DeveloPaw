package ga.bowwow.controller.user.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.impl.UserAccountServiceImpl;

@Controller
@SessionAttributes("userDTO")
@RequestMapping("/account")
public class UserAccountController extends UserCRUDGenericController<UserAccount, Integer, UserAccountServiceImpl> {
	public UserAccountController() {
		System.out.println("---->>> UserAccountController() 객체생성");
		setRoute("/ok", "/auth.login");
		System.out.println("accountRouted");
	}

	//TODO 일관된 resolve/error 리턴 환경 만들 수 있는가?
	//TODO =>DI하는 식으로, 실패시 돌아가는 경로를 담은 리스트를 쓴다? -> 클래스가 될 수도 있음.
	//TODO =>일반적으로, 1. 실패하는 경우는 자기 자신으로 돌아감. 2. 부모로 돌아감.(트랜잭션의 시작지점?) <-이게 클래스의 생성자 타입이 될 수 있음.
	//TODO =>DB에서 찾아올 때, 실패하길 원하는가, 성공하길 원하는가?가 클래스의 생성자 두번째일 수 있음.
	//TODO =>트랜잭션이란, 결국에 2+개의 boolean을 and처리한 결과임.

	@RequestMapping(value="/signupAccount") //CRUD페이지
	public String getUserInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "/auth.myInfo";
	}
	@RequestMapping(value="/login")
	public String getUserAccount(@ModelAttribute("userAccount") UserAccount userAccount, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException{
		boolean result = super.service.loginAttemp(userAccount);
		if(result) {
			model.addAttribute("userDTO", userAccount);
		}
		
		if(result) {
			String id = request.getParameter("id");
			String checkbox = request.getParameter("userId");
			Cookie cookie = new Cookie("userId", id);
			if (checkbox != null) {
				response.addCookie(cookie);
			} else {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
		
		return result ? "redirect:/store/storeMain" : "/auth.login";
	}
	@RequestMapping(value="/signup")
	public String confirmUserTerms() {
		return "/auth.terms";
	}
	@RequestMapping(value="/loginSuccess")
	public String confirmLogin() {
		return "/ok2";
	}

	//TODO 해당domain의 기본형 resolve/error를 구현할 필요가 있음
	private String simpleOkPageDistributor(boolean isOK) {
		return (isOK) ? "/ok" : "failedRoute <- usually itself";
	}
	@Override
	public List<UserAccount> list(UserAccount vo) {
		return null;
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
				@RequestMapping(value="/getUser")
				public UserAccount getUserFromDB(@ModelAttribute("userAccount") UserAccount userAccount) {
					return super.get(userAccount);
				}
}
