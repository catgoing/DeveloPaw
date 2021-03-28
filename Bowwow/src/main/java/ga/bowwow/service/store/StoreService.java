package ga.bowwow.service.store;

import java.util.List;

public interface StoreService {
	//CRUD 기능 구현 메소드 정의
	public void insertProducts(Product products);
	public void updateProducts(Product products);
	public void deleteProducts(Product products);
	public Product getProductDetailCat(int p_id);
	public Product getProductDetailDog(int p_id);
	public List<Product> getProductList(String p_type);
//	public List<Product> getCatProductList(Product products);
	
	
	
}
