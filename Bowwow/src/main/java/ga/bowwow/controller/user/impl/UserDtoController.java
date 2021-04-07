package ga.bowwow.controller.user.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
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
	
	@GetMapping(value="/login")
	public String loginPage(HttpServletRequest request) {
		System.out.println("getLogin");
		if(!isSessionNewAndHasNoUserDTO(request.getSession())) {
			return "redirect:/mypage/myInfo";
		}
		return "/auth.login";
	}
	@PostMapping(value="/login")
	public String loginUserDTO(@ModelAttribute("userDTO") UserDTO userDTO, Model model, HttpServletRequest request) {
		final String baseUrl = ServletUriComponentsBuilder.fromCurrentContextPath().build().toUriString();
		HttpSession session = request.getSession();
		if(attemptUserLogin(baseUrl, userDTO).getStatusCode() == HttpStatus.OK) {
			UserDTO completeUserDtoTest = (UserDTO) service.getVo(userDTO);
			ArrayList userAddressList = requestUserAddressList(baseUrl, completeUserDtoTest);
			System.out.println("userAddressList for login" + userAddressList);
			session.setAttribute("userDTO", completeUserDtoTest);
			session.setAttribute("userAddress", userAddressList);
			
//			System.out.println("userDTO for login : " +completeUserDtoTest);
			return "redirect:/mypage/myInfo";
		}
		return "/auth.login";
	}

	//추상화된 REST 자원 받아오기 명령 : (baseUrl, 체킹 T(추상VO, 또는 Serial), 경로(rest자원명), 파라미터)=>{}
	//실험. getBody로 넘긴 리스트를 타입체킹해서 올바르게 넘길 수 있는가? 
	private ArrayList requestUserAddressList(final String baseUrl, UserAccount userAccount) {
		return rt.postForEntity(baseUrl + "/address/list", userAccount, ArrayList.class).getBody();
	}
	
	//TODO 로직을 보이기 위해서 singleLine method로 두었는데, 그냥 인라인하거나 아니면 setRoute? 아니면 익명 콜백으로 추상화 할 수도 있음.
	private ResponseEntity<String> attemptUserLogin(String baseUrl, UserAccount userAccount) {
//		System.out.println("dtoController userAccount : " + userAccount);
		return rt.postForEntity(baseUrl + "/account/loginValidateUserAccount", userAccount, String.class);
//		System.out.println(baseUrl + "/account/loginValidateUserAccount");
//		System.out.println(re.getStatusCode());
//		System.out.println(re.getBody());
	}

	boolean isSessionNewAndHasNoUserDTO(HttpSession session) {
		return session.getAttribute("userDTO") == null ? true : false;
	}

	@RequestMapping(value="/logout")
	public String getUserAccount(@Autowired HttpSession session, SessionStatus sessionStatus) {
//		System.out.println("onSession userDTO : " + session.getAttribute("userDTO"));
		session.removeAttribute("userDTO");
		sessionStatus.setComplete();
		return "redirect:/mypage/myInfo";
	}

	//modelAttribute for Method Test -> works
	@ModelAttribute("userDtoList")
	public ArrayList<UserDTO> getDefaultUserDto() {
		ArrayList<UserDTO> userDtoList = (ArrayList<UserDTO>) service.getVoList();
		return userDtoList;
	}
	
	@ResponseBody
	@GetMapping(value="/list")
	public ResponseEntity<ArrayList<UserDTO>> getRestUserDtoList() {
		ArrayList<UserDTO> userDtoList = (ArrayList<UserDTO>) service.getVoList();
		System.out.println(userDtoList);
		return ResponseEntity.ok(userDtoList);
	}
	
	@GetMapping(value="/manageList") //CRUD페이지
	public String addUserDtoInfo(@ModelAttribute("userDtoList") ArrayList<UserDTO> userDtoList, Model model) {
//		final String baseUrl = ServletUriComponentsBuilder.fromCurrentContextPath().build().toUriString();
//		userDtoList = rt.getForEntity(baseUrl+"/user/list", ArrayList.class).getBody();
		model.addAttribute("userDtoList", userDtoList);
		return "/auth.userList";
	}
	
}
