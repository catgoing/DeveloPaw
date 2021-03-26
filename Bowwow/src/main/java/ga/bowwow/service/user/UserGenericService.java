package ga.bowwow.service.user;

import java.util.List;

public interface UserGenericService<T> {
	void addUser(T vo);
	void updateUser(T vo);
	void deleteUser(T vo);
	T getUser(T vo);
	List<T> getUserList(T vo);
}