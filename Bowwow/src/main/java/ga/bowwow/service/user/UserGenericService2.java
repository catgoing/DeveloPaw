package ga.bowwow.service.user;

import java.util.List;

public abstract class UserGenericService2<T> {
	boolean addUser(T vo) {return false;}
	boolean updateUser(T vo) {return false;}
	boolean deleteUser(T vo) {return false;}
	T getUser(T vo) {return null;}
	List<T> getUserList(T vo) {return null;}
}