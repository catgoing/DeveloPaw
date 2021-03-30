package ga.bowwow.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import ga.bowwow.service.user.UserAccount;
import ga.bowwow.service.user.UserGenericService;

@Controller
public abstract class UserCRUDGenericController<T, SN, S extends UserGenericService<T>> {
	@Autowired
	protected S service;
	
	protected String add(T vo, String resolveRoute, String errorRoute) {
		return router(service.addUser(vo), resolveRoute, errorRoute);
	}
	protected String update(T vo, String resolveRoute, String errorRoute) {
		return router(service.updateUser(vo), resolveRoute, errorRoute);
	}
	protected String delete(T vo, String resolveRoute, String errorRoute) {
		return router(service.deleteUser(vo), resolveRoute, errorRoute);
	}
	protected T get(T vo) {
		return (T)service.getUser(vo);
	}
	protected abstract List<T> list(T vo);
	
	private static String router(boolean source, String resolveRoute, String errorRoute) {
		return source ? resolveRoute : errorRoute;
	}
	
	

	//legacy
//	@RequestMapping("/add") protected void add(T vo) {
//		service.addUser(vo);
//	}
//	@RequestMapping("/update") protected void update(T vo) {
//		service.updateUser(vo);
//	}
//	@RequestMapping("/delete") protected void delete(T vo) {
//		service.deleteUser(vo);
//	}
}
