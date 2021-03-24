package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import ga.bowwow.service.store.Products;
import ga.bowwow.service.store.Review;
import ga.bowwow.service.store.StoreService;


public class StoreServiceImpl implements StoreService {
	@Autowired
	private ProductReviewDAO productReviewDAO;

	public StoreServiceImpl() {
		System.out.println(">> StoreServiceImpl() 객체생성");		
	}
	
	// 상품 리뷰 관련
	@Override
	public void insertProductReview(Review review) {
		productReviewDAO.insertProductReview(review);
	}
	
	@Override
	public void updateProductReview(Review review) {
		productReviewDAO.updateProductReview(review);
	}

	@Override
	public void deleteProductReview(Review review) {
		productReviewDAO.deleteProductReview(review);
	}

	@Override
	public Review getProductReview(Review review) {
		return productReviewDAO.getProductReview(review);
	}

	@Override
	public List<Review> getProductReviewList() {
		return productReviewDAO.getProductReview();
	}

	@Override
	public List<Review> getProductReviewList(Review review) {
		return productReviewDAO.getProductReview(review);
	}


}
