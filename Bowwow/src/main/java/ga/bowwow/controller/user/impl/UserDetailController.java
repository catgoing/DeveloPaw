package ga.bowwow.controller.user.impl;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.UserDetail;
import ga.bowwow.service.user.impl.UserDetailServiceImpl;

@Controller
@RequestMapping("/detail")
public class UserDetailController extends UserCRUDGenericController<UserDetail, Integer, UserDetailServiceImpl> {
	
	public UserDetailController() {
		System.out.println("---->>> UserDetailController() 객체생성");
		setRoute("/ok2", "/auth.login");
		System.out.println("detailRouted");
	}
	
	//TODO memberSerial의 동기화 작업이 필요함!
	@RequestMapping(value="/signupDetail")
	public String getDetailInfo(@ModelAttribute("userDetail") UserDetail userDetail) {
		return "/auth.myDetail";
	}
	
	//TODO 컨트롤러가 너무 구체적인 작업을 하고 있음, GENERICCONTROLLER를 사용하지 않고 있음. 파이프라인 정도의 역할만 해아함.
	private String simpleOkPageDistributor(boolean isOK) {
		return (isOK) ? "/ok" : "failedRoute <- usually itself";
	}

	@Override
	protected List<UserDetail> list(UserDetail vo) {
		// TODO Auto-generated method stub
		return null;
	}

	
	//legacy
	@RequestMapping(value="/modifyDetail")
	public String modifyUserInDB(@ModelAttribute("userDetail") UserDetail userDetail) {
		return super.update(userDetail, "/ok", "/auth.login");
	}
	@RequestMapping(value="/registDetail")
	public String registUserToDB(@ModelAttribute("userDetail") UserDetail userDetail) {
		System.out.println("isRegistRouted?");
		return super.add(userDetail, "/ok" , "/auth.login");
	}
	@RequestMapping(value="/deleteDetail")
	public String deleteUserFromDB(@ModelAttribute("userDetail") UserDetail userDetail) {
		return super.delete(userDetail, "/ok", "/auth.login");
	}
	@RequestMapping(value="/getUser")
	public UserDetail getUserFromDB(@ModelAttribute("userDetail") UserDetail userDetail) {
		return super.get(userDetail);
	}
}
