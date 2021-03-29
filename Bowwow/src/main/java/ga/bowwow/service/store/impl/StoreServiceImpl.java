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
	public void insertProducts(Product product) {

	}

	@Override
	public void updateProducts(Product product) {

	}

	@Override
	public void deleteProducts(Product product) {

	}

	@Override
	public Product getProductDetail(int p_id) {
		return storeDAO.getProductDetail(p_id);
	}
	
	@Override
	public List<Product> getProductList(Product product) {
		return storeDAO.getProductList(product);
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
	
}
