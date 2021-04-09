package ga.bowwow.controller.userpage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;
import ga.bowwow.service.store.Order;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserDTO;
import ga.bowwow.service.userpage.UserPointService;

@Controller
@SessionAttributes("pointList")
public class UserPageController {
	
	@Autowired
	private UserPointService uPointService;
	@Autowired
	private PetService pService;
	
	public UserPageController() {
		System.out.println("유저페이지컨트롤러 생성");
	}
	
	@RequestMapping(value = "/mypage/myInfo")
	public String myInfo() {
		return "myInfo";
	}
	@RequestMapping(value = "/mypage/myPoint")
	public String myPoint() {
		return "/mypage/myPoint";
	}
	@RequestMapping(value = "/mypage/withdrawl")
	public String withdrawl() {
		return "/mypage/withdrawl";
	}
	
	@RequestMapping(value="/getMyPointList", method=RequestMethod.POST)
	public String getMyPointList(Order order, Model model, HttpServletRequest request) {
		System.out.println("getMyPointList 시작!!");
		System.out.println("order : " + order);
		List<Order> pointList = uPointService.getUserPointList(order);
		
		model.addAttribute("pointList", pointList);
		
		return "/mypage/myPoint";
	}
	
	//마이홈 들어갔을 때 화면 출력
	@RequestMapping(value="/mypage/myPageMain")
	public String getMyHome(UserAccount userAccount, Model model, HttpServletRequest request) {
		System.out.println("getMyHome~~ 마이홈화면 출력");
		System.out.println("UserDTO 1 : " + userAccount);

		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		
		System.out.println("member_serial : " + member_serial);
		
		userAccount.setMember_serial(member_serial);
		System.out.println("UserDTO 2 : " + userAccount);

		List<Order> pointList = getMyHomePointList(userAccount);
		System.out.println("UserDTO 3 : " + userAccount);
		List<Pet> petList = getMyHomePetList(userAccount);
		
		model.addAttribute("myHomePointList", pointList);
		model.addAttribute("myHomepetList", petList);
		
		return "/mypage/myPageMain";
	}
	//마이홈 포인트출력
	public List<Order> getMyHomePointList(UserAccount userAccount){
		System.out.println("getMyHomePointList : " + userAccount);
		int member_serial = userAccount.getMember_serial();
		
		List<Order> pointList = uPointService.getMyHomePointList(member_serial);
		System.out.println(pointList.toString());
		return pointList;
	}
	//마이홈 반려동물 정보출력 
	public List<Pet> getMyHomePetList(UserAccount userAccount){
		System.out.println("getMyHomePetList : " + userAccount);
		int member_serial = userAccount.getMember_serial();

		List<Pet> petList = pService.getMyHomePetList(member_serial);
		
		return petList;
	}
	
}
