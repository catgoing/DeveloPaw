package ga.bowwow.service.store;

import java.util.List;
import java.util.Map;

public interface StoreService {

	public void insertProducts(Product products);
	public void updateProducts(Product products);
	public void deleteProducts(Product products);
	public Product getProductDetail(int p_id);
	public List<Product> getProductList(Map<String, String> map);
	public int getProductCount(Map<String, String> map);
	public List<Product> getDogProductByPrice(Product products);
	public List<Product> getCatProductByPrice(Product products);
}
