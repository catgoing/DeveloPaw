package ga.bowwow.service.store;

import java.util.List;
import java.util.Map;

public interface StoreService {

	public void insertProducts(Product product);
	public void updateProducts(Product product);
	public void deleteProducts(Product product);
	public Product getProductDetail(int p_id);
	public List<Product> getProductList(Map<String, String> map);
	public int getProductCount(Map<String, String> map);
	public int getSearchCount(Map<String, String> map);
	public List<Product> prodSearch(Map<String, String> map); 
	

}
