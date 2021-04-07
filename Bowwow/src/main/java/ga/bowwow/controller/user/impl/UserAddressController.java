package ga.bowwow.controller.user.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserAddress;
import ga.bowwow.service.user.impl.UserAddressServiceImpl;

@Controller
@RequestMapping("/address")
public class UserAddressController extends UserCRUDGenericController<UserAddress>{
	RestTemplate rt = new RestTemplate();
	
	public UserAddressController(@Autowired UserAddressServiceImpl service) {
		System.out.println("---->>> AddrAccountController() 객체생성");
		this.service = service;
		setDomainRoute("/ok", "/auth.login");
	}

	//"/list"mapping으로 REST 방식으로 전환할 수 있지 않나? -> AddressController는 자원만 관여하는 RestController의 가능성이 있음.
	@PostMapping(value= "/addAddressList",
			produces = "application/text; charset=UTF-8")
	public String add(@RequestBody ArrayList<UserAddress> address)  {
		System.out.println("addresslist controller test2");
		try {
			System.out.println(address);
			return "/auth.myAccount";
		} catch (DataIntegrityViolationException  e) {
			System.out.println("Caught Integerity Exception Test");
			e.printStackTrace();
		} catch (TooManyResultsException e) {
			e.printStackTrace();
		}
		return "/ok";
	}
	
	//RESTful 규칙을 위반함 -> memberSerial을 파라미터로 노출하는 게 위험하거나/이상해서이면서 : 아직 getForEntity의 파라미터 넘기는 방식에 익숙해지지 않아서임. 
	@ResponseBody
	@PostMapping("/list")
	public List<UserAddress> getList(@RequestBody UserAccount userAccount) {
		return ((UserAddressServiceImpl)service).getVoList(userAccount);
	}
	
	@RequestMapping(value="/manageAddress") //CRUD페이지
	public String getAddressInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "/auth.myAddress";
	}
}
