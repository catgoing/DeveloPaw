package ga.bowwow.controller.store;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import ga.bowwow.service.store.StoreService;


@Controller
public class StoreController {
	@Autowired //의존주입(DI) : 동일한 데이터 타입 객체
	private StoreService storeService; //의존주입<-- BoardServiceImpl
	
	public StoreController() {
		System.out.println("---->>> BoardController() 객체생성");
		System.out.println("> storeService : " + storeService); //null
	}

}


