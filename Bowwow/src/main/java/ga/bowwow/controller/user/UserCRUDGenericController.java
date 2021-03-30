package ga.bowwow.controller.user;

import java.util.List;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.user.UserGenericService;

@Controller
public abstract class UserCRUDGenericController<T, SN, S extends UserGenericService<T>> {
	@Autowired
	protected S service;
	
	String resolveRoute;
	String errorRoute;
	
	protected String add(T vo, String resolveRoute, String errorRoute) {
		return router(service.addVo(vo), resolveRoute, errorRoute);
	}
	protected String update(T vo, String resolveRoute, String errorRoute) {
		return router(service.updateVo(vo), resolveRoute, errorRoute);
	}
	protected String delete(T vo, String resolveRoute, String errorRoute) {
		return router(service.deleteVo(vo), resolveRoute, errorRoute);
	}
	
	@RequestMapping("/add")
	protected String add(T vo)  {
		try {
			return router(service.addVo(vo), resolveRoute, errorRoute);
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		} catch (TooManyResultsException e) {
			e.printStackTrace();
		}
		return errorRoute;
	}
	@RequestMapping("/update")
	protected String update(T vo) {
		return router(service.updateVo(vo), resolveRoute, errorRoute);
	}
	@RequestMapping("/delete")
	protected String delete(T vo) {
		return router(service.deleteVo(vo), resolveRoute, errorRoute);
	}

	
	
	protected T get(T vo) {
		return (T)service.getVo(vo);
	}
	protected abstract List<T> list(T vo);
	
	private static String router(boolean source, String resolveRoute, String errorRoute) {
		return source ? resolveRoute : errorRoute;
	}

	protected void setRoute(String resolveRoute, String errorRoute) {
		this.setResolveRoute(resolveRoute);
		this.setErrorRoute(errorRoute);
	}
	public String getResolveRoute() {
		return resolveRoute;
	}
	protected void setResolveRoute(String resolveRoute) {
		this.resolveRoute = resolveRoute;
	}
	public String getErrorRoute() {
		return errorRoute;
	}
	protected void setErrorRoute(String errorRoute) {
		this.errorRoute = errorRoute;
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
