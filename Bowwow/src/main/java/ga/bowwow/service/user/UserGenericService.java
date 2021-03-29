package ga.bowwow.service.user;

import java.util.List;

public interface UserGenericService<T> {
	boolean addUser(T vo);
	boolean updateUser(T vo);
	boolean deleteUser(T vo);
	T getUser(T vo);
	List<T> getUserList(T vo);
}