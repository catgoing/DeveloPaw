package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Review;
import ga.bowwow.service.store.StoreReviewService;

@Service
public class StoreReviewServiceImpl implements StoreReviewService {
	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public void insertReview(Review review) {
		System.out.println("impl-------------");
		System.out.println(review);
		storeDAO.insertReview(review);
	}

	@Override
	public void deleteReview(int review_id) {
		storeDAO.deleteReview(review_id);
		
	}

	@Override
	public List<Review> getReviewList(int p_id) {
		return storeDAO.getReviewList(p_id);
	}

	@Override
	public Review getLastReview(int p_id) {
		return storeDAO.getLastReview(p_id);
	}

}
