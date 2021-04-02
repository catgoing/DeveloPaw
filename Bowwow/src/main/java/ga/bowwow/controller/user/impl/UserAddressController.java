package ga.bowwow.controller.user.impl;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserAddress;
import ga.bowwow.service.user.impl.UserAddressServiceImpl;

@Controller
public class UserAddressController extends UserCRUDGenericController<UserAddress>{
	public UserAddressController(@Autowired UserAddressServiceImpl service) {
		System.out.println("---->>> AddrAccountController() 객체생성");
		this.service = service;
		setDomainRoute("/ok", "/auth.login");
	}

//	form.submit();
	
//	public String 클래스명(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
//	    Gson gson = new Gson();
//	    DataSet set = new DataSet();
//	    return gson.toJson(set);
//	}

	@PostMapping(value= "/address/addAddressList",
			produces = "application/text; charset=UTF-8")
	public String add(@RequestBody ArrayList<UserAddress> address)  {
		System.out.println("addresslist controller test2");
		try {
			System.out.println(address);
//			String memberSerial = (String) request.getAttribute("memberSerial");
//			System.out.println(memberSerial);
			return "/auth.myAccount";
		} catch (DataIntegrityViolationException  e) { // 이게 안 잡힘?
			System.out.println("Caught Integerity Exception Test");
			e.printStackTrace();
		} catch (TooManyResultsException e) {
			e.printStackTrace();
		}
		return "/ok";
	}
	@RequestMapping(value="/address/manageAddress") //CRUD페이지
	public String getAddressInfo(@ModelAttribute("userAccount") UserAccount userAccount) {
		return "/auth.myAddress";
	}
}
