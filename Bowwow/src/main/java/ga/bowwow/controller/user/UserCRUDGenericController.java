package ga.bowwow.controller.user;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.user.UserGenericService;

public abstract class UserCRUDGenericController<T, SN, S> {
	S service;
	@RequestMapping("/add") public void add(T vo) {}
	@RequestMapping("/update") public void update(T vo) {}
	@RequestMapping("/delete") public void delete(T vo) {}
	@RequestMapping("/get") public T get(T vo) { return vo;}
	@RequestMapping("/list") public List<T> list(T vo) { return new List<T> list;}
}
