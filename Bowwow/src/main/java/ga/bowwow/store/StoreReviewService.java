package ga.bowwow.store;

import java.util.List;

public interface StoreReviewService {
	//CRUD 기능 구현 메소드 정의
	void insertReview(Review review);
	void updateReview(Review review);
	void deleteReview(Review review);
	Review getReview(Review review);
	List<Review> getReviewList();
	List<Review> getReviewList(Review review);	
	
}
