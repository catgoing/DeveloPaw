package ga.bowwow.service.store;

import java.util.List;

public interface StoreService {
	//CRUD 기능 구현 메소드 정의
	void insertProducts(Products products);
	void updateProducts(Products products);
	void deleteProducts(Products products);
	Products getProducts(Products products);
	List<Products> getDogProductList(Products products);
	List<Products> getCatProductList(Products products);
	
	
	
}
