package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Product;
import ga.bowwow.service.store.Review;
import ga.bowwow.service.store.StoreService;

@Service
public class StoreServiceImpl implements StoreService {
	
	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public void insertProducts(Product products) {

	}

	@Override
	public void updateProducts(Product products) {

	}

	@Override
	public void deleteProducts(Product products) {

	}

	@Override
	public Product getProductDetailCat(int p_id) {
		return storeDAO.getProductDetailCat(p_id);
	}
	
	@Override
	public Product getProductDetailDog(int p_id) {
		return storeDAO.getProductDetailDog(p_id);
	}

	@Override
	public List<Product> getProductList(String p_type) {
		return storeDAO.getProductList(p_type);
	}

	@Override
	public void insertReview(Review review) {
		System.out.println("impl-------------");
		System.out.println(review);
		storeDAO.insertReview(review);
	}

	@Override
	public List<Review> getReviewList(int p_id) {
		return storeDAO.getReviewList(p_id);
	}
	
//	@Override
//	public List<Product> getCatProductList(Product products) {
//		return storeDAO.getCatProductList(products);
//	}

}
