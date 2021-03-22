package ga.bowwow.store;

import java.util.List;

public interface storeService {
	//CRUD 기능 구현 메소드 정의
	void insertStore(store vo);
	void updateStore(store vo);
	void deleteStore(store vo);
	store getStore(store vo);
	List<store> getStoreList();
	List<store> getStoreList(store vo);
}
