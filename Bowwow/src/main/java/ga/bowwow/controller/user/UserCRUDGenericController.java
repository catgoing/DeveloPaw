package ga.bowwow.controller.user;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.user.UserGenericService;

@Controller
public abstract class UserCRUDGenericController<T> {
	protected UserGenericService service;
	
	protected String resolveRoute;
	protected String errorRoute;
	
	@RequestMapping("/add")
	protected String add(T vo)  {
		try {
			System.out.println("controller : " + vo);
			return router(service.addVo(vo), resolveRoute, errorRoute);
		} catch (DataIntegrityViolationException  e) { // 이게 안 잡힘?
			System.out.println("Caught Integrity Exception Test");
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
		System.out.println("controller");
		return router(service.deleteVo(vo), resolveRoute, errorRoute);
	}
	protected T get(T vo) {
		return (T)service.getVo(vo);
	}
	
	//라우터 클래스를 따로 만들 수 있는가?
	protected void setDomainRoute(String resolveRoute, String errorRoute) {
		this.setResolveRoute(resolveRoute);
		this.setErrorRoute(errorRoute);
	}
	public static String router(boolean source, String resolveRoute, String errorRoute) {
		return source ? resolveRoute : errorRoute;
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
				protected String add(T vo, String resolveRoute, String errorRoute) {
					return router(service.addVo(vo), resolveRoute, errorRoute);
				}
				protected String update(T vo, String resolveRoute, String errorRoute) {
					return router(service.updateVo(vo), resolveRoute, errorRoute);
				}
				protected String delete(T vo, String resolveRoute, String errorRoute) {
					return router(service.deleteVo(vo), resolveRoute, errorRoute);
				}
}
