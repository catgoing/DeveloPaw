package ga.bowwow.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.user.UserGenericService;

@Controller
public abstract class UserCRUDGenericController<T, SN, S extends UserGenericService<T>> {
	@Autowired
	protected S service;
	@RequestMapping("/add") protected void add(T vo) {
		service.addUser(vo);
	}
	@RequestMapping("/add") protected String add(T vo, String resolveRoute, String errorRoute) {
		service.addUser(vo);
	}
	@RequestMapping("/update") protected void update(T vo) {
		service.updateUser(vo);
	}
	@RequestMapping("/delete") protected void delete(T vo) {
		service.deleteUser(vo);
	}
	@RequestMapping("/get") protected T get(T vo) {
		return (T)service.getUser(vo);
	}
	@RequestMapping("/list") protected abstract List<T> list(T vo);
}
