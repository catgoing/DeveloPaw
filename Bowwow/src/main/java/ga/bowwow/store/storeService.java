package ga.bowwow.store;

import java.util.List;

public interface storeService {
	//CRUD 기능 구현 메소드 정의
	void insertProducts(Products vo);
	void updateProducts(Products vo);
	void deleteProducts(Products vo);
	Products getProducts(Products vo);
	List<Products> getProductsList();
	List<Products> getProductsList(Products vo);
}
