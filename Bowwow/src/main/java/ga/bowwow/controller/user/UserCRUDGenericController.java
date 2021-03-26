package ga.bowwow.controller.user;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.user.UserGenericService;

@Controller
public abstract class UserCRUDGenericController<T, SN, S extends UserGenericService<T>> {
	S service;
	@RequestMapping("/add") public void add(T vo) {
		service.addUser(vo);
	}
	@RequestMapping("/update") public void update(T vo) {
		service.updateUser(vo);
	}
	@RequestMapping("/delete") public void delete(T vo) {
		service.deleteUser(vo);
	}
	@RequestMapping("/get") public T get(T vo) {
		return (T)service.getUser(vo);
	}
	@RequestMapping("/list") public abstract List<T> list(T vo);
}
