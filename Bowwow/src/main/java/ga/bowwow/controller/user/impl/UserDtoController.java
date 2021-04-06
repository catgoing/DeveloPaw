package ga.bowwow.controller.user.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserDTO;
import ga.bowwow.service.user.impl.UserDtoServiceImpl;

@Controller
@RequestMapping("/userList")
public class UserDtoController extends UserCRUDGenericController<UserAccount> {
	public UserDtoController(@Autowired UserDtoServiceImpl service) {
		System.out.println("---->>> UserDtoController() 객체생성");
		this.service = service;
		setDomainRoute("/ok", "/auth.login");
	}
	
	@GetMapping(value="/manageList") //CRUD페이지
	public String getUserDtoInfo(@ModelAttribute("userDTO") ArrayList<UserDTO> userDtoList, Model model) {
		System.out.println("GETLIST RESOLVING TEST");
		userDtoList = (ArrayList<UserDTO>) service.getVoList();
		model.addAttribute("userDtoList", userDtoList);
		System.out.println(userDtoList);
		return "/auth.userList";
	}
	
	@GetMapping("/getUserAccountAddressList")
	protected String getUserAccountAddressList(@ModelAttribute ArrayList<UserAccount> userDtoList, Model model ) {
		System.out.println("GETUserAccountAddressLIST Controller TEST");
		userDtoList = (ArrayList<UserAccount>) service.getVoList();
		model.addAttribute("userDtoList", userDtoList);
		System.out.println(userDtoList);
		return "/auth.userAccountAddressList";
	}
	
	@PostMapping(value="/manageList") //CRUD페이지
	public String addUserDtoInfo(@ModelAttribute("userDTO") UserDTO userDto) {
		return "/auth.userList";
	}
}
