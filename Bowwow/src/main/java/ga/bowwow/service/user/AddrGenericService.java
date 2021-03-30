package ga.bowwow.service.user;

import java.util.List;

public interface AddrGenericService<T> {
	boolean addAddr(T vo);
	boolean updateAddr(T vo);
	boolean deleteAddr(T vo);
	T getAddr(T vo);
	List<T> getAddrList(T vo);
}