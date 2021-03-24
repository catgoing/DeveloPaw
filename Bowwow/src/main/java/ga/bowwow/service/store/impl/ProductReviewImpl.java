package ga.bowwow.service.store.impl;

import org.springframework.beans.factory.annotation.Autowired;

import ga.bowwow.service.store.Review;

public class ProductReviewImpl {
	@Autowired
	private ProductReviewDAO productReviewDAO;
	
	private ProductReviewImpl() {
		System.out.println(">> ProductReviewImpl() 객체생성!!!");
	}
	
	public void insertProductReview(Review review) {
		productReviewDAO.insertProductReview(review);
	}

	public void updateProductReview(Review review) {
		productReviewDAO.updateProductReview(review);
	}

	public void deleteProductReview(Review review) {
		productReviewDAO.deleteProductReview(review);
	}

}
