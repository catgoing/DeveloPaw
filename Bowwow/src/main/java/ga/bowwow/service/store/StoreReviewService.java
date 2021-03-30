package ga.bowwow.service.store;

import java.util.List;

public interface StoreReviewService {
	//CRUD 기능 구현 메소드 정의
	public void insertReview(Review review);
	public List<Review> getReviewList(int p_id);
	public void deleteReview(int review_id);
	public Review getLastReview(int p_id);
	
	

}
