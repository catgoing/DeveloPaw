package ga.bowwow.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import ga.bowwow.service.user.AddrGenericService;
import ga.bowwow.service.user.UserGenericService;

@Controller
public abstract class AddrCRUDGenericController<T, SN, S extends AddrGenericService<T>> {
	@Autowired
	protected S service;
	
	protected String add(T vo, String resolveRoute, String errorRoute) {
		return router(service.addAddr(vo), resolveRoute, errorRoute);
	}
	protected String update(T vo, String resolveRoute, String errorRoute) {
		return router(service.updateAddr(vo), resolveRoute, errorRoute);
	}
	protected String delete(T vo, String resolveRoute, String errorRoute) {
		return router(service.deleteAddr(vo), resolveRoute, errorRoute);
	}
	protected T get(T vo) {
		return (T)service.getAddr(vo);
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
