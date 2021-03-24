package ga.bowwow.service.store;

import java.util.List;

public interface StoreService {
	//CRUD 기능 구현 메소드 정의
	void insertProductReview(Review review);
	void updateProductReview(Review review);
	void deleteProductReview(Review review);
	Review getProductReview(Review review);
	List<Review> getProductReviewList();
	List<Review> getProductReviewList(Review review);
	
	
	
}
