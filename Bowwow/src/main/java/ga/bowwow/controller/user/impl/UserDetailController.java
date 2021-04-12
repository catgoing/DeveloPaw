package ga.bowwow.controller.user.impl;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.controller.user.UserCRUDGenericController;
import ga.bowwow.service.user.VO.UserDetail;
import ga.bowwow.service.user.impl.UserDetailServiceImpl;

@Controller
@RequestMapping("/detail")
public class UserDetailController extends UserCRUDGenericController<UserDetail> {
	
	@PostMapping(value= "/add")
	protected ResponseEntity<String> addDetailResponse(@RequestBody UserDetail vo) {
		System.out.println("detail controller Test");
		try {
			return service.addVo(vo) ? ResponseEntity.ok().build() : ResponseEntity.badRequest().build();
		} catch (DataIntegrityViolationException  e) {
			System.out.println("Caught Integerity Exception Test");
			e.printStackTrace();
		} catch (TooManyResultsException e) {
			e.printStackTrace();
		}
		return ResponseEntity.status(409).build();
	}
	
	public UserDetailController(@Autowired UserDetailServiceImpl service) {
		System.out.println("---->>> UserDetailController() 객체생성");
		this.service = service;
		setDomainRoute("/ok", "/auth.login");
	}
	
	//TODO memberSerial의 동기화 작업이 필요함!
	@RequestMapping(value="/signupDetail") //CRUD페이지
	public String getDetailInfo(@ModelAttribute("userDetail") UserDetail userDetail) {
		return "/auth.myDetail";
	}
}
