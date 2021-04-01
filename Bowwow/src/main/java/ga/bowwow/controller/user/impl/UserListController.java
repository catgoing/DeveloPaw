package ga.bowwow.controller.user.impl;

import java.util.List;

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

	//TODO 일관된 resolve/error 리턴 환경 만들 수 있는가?
	//TODO =>DI하는 식으로, 실패시 돌아가는 경로를 담은 리스트를 쓴다? -> 클래스가 될 수도 있음.
	//TODO =>일반적으로, 1. 실패하는 경우는 자기 자신으로 돌아감. 2. 부모로 돌아감.(트랜잭션의 시작지점?) <-이게 클래스의 생성자 타입이 될 수 있음.
	//TODO =>DB에서 찾아올 때, 실패하길 원하는가, 성공하길 원하는가?가 클래스의 생성자 두번째일 수 있음.
	//TODO =>트랜잭션이란, 결국에 2+개의 boolean을 and처리한 결과임.

	
	@RequestMapping(value="/manageList") //CRUD페이지
	public String getUserInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		
		return "/auth.userList";
	}
	@Override
	public List<UserAccount> list(UserAccount vo) {
		return null;
	}
}
