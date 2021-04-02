package ga.bowwow.controller.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.impl.UserListServiceImpl;

@Controller
@SessionAttributes("userDTO")
@RequestMapping("/userList")
public class UserListController extends UserCRUDGenericController<UserAccount> {
	public UserListController(@Autowired UserListServiceImpl service) {
		System.out.println("---->>> UserAccountController() 객체생성");
		this.service = service;
		setDomainRoute("/ok", "/auth.login");
	}
	
	@RequestMapping(value="/manageList") //CRUD페이지
	public String getUserInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "/auth.userList";
	}
}
