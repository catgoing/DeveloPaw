package ga.bowwow.controller.user.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserDTO;
import ga.bowwow.service.user.impl.UserDtoServiceImpl;

//rest방식이 가능한가?
//@RestController
@Controller
@RequestMapping("/user")
public class UserDtoController extends UserCRUDGenericController<UserAccount> {
	
	RestTemplate rt = new RestTemplate();
	
	public UserDtoController(@Autowired UserDtoServiceImpl service) {
		System.out.println("---->>> UserDtoController() 객체생성");
		this.service = service;
		setDomainRoute("/ok", "/auth.login");
	}
	
	@RequestMapping(value="/login")
	public String loginUserDTO(@ModelAttribute("userDTO") UserDTO userDTO, Model model) {
		if(attemptUserLogin(userDTO).getStatusCode() == HttpStatus.OK) {
			UserDTO completeUserDtoTest = (UserDTO) service.getVo(userDTO);
			System.out.println("userDTO for login : " +completeUserDtoTest);
			model.addAttribute(service.getVo(userDTO));
			return "/store/storeMain";
		}
		return "/auth.login";
	}

	//TODO 로직을 보이기 위해서 singleLine method로 두었는데, 그냥 인라인하거나 아니면 setRoute? 아니면 익명 콜백으로 추상화 할 수도 있음.
	private ResponseEntity<String> attemptUserLogin(UserAccount userAccount) {
		final String baseUrl = ServletUriComponentsBuilder.fromCurrentContextPath().build().toUriString();
		System.out.println("dtoController userAccount : " + userAccount);
		return rt.postForEntity(baseUrl + "/account/loginValidateUserAccount", userAccount, String.class);
//		System.out.println(baseUrl + "/account/loginValidateUserAccount");
//		System.out.println(re.getStatusCode());
//		System.out.println(re.getBody());
	}
	
	//TODO offset, limit 주고 오버로딩으로 페이징 처리가 필요 할 수도 있음. 
	//모델을 줄 수 있는지 테스트?(<- 이상함. 최소한 rest 방식에서는 그냥 최상단 클라이언트가 model을 등록하는 게 합리적으로 보임.)
	private void getUserDtoList(Model model) {
		final String baseUrl = ServletUriComponentsBuilder.fromCurrentContextPath().build().toUriString();
		ArrayList<UserDTO> userList = rt.getForObject(baseUrl + "/userDTO/manageList", ArrayList.class);
		System.out.println(userList);
		model.addAttribute(userList);
		return;
	}
	
	@ResponseBody
	@GetMapping(value="/manageList") //CRUD페이지
	public String getUserDtoInfo(@ModelAttribute("userDTO") ArrayList<UserDTO> userDtoList, Model model) {
		System.out.println("GETLIST RESOLVING TEST");
		userDtoList = (ArrayList<UserDTO>) service.getVoList();
		model.addAttribute("userDtoList", userDtoList);
		System.out.println(userDtoList);
		return "/auth.userList";
	}
	
	@PostMapping(value="/manageList") //CRUD페이지
	public String addUserDtoInfo(@ModelAttribute("userDTO") UserDTO userDto) {
		return "/auth.userList";
	}
	
}
