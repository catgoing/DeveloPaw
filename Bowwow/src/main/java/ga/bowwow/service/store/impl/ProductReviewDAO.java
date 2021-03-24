package ga.bowwow.service.store.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.store.Review;

@Repository("productReviewDAO")
public class ProductReviewDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProductReviewDAO() {
		System.out.println(">> productReviewDAOMybatis() 객체생성");
	}
	
	//리뷰 입력
	public void insertProductReview(Review review) {
		System.out.println("===> MyBatis로 insertProductReview() 실행");
		mybatis.insert("productReviewDAO.insertProductReview", review);
	}
	
	//리뷰 수정
	public void updateProductReview(Review review) {
		System.out.println("===> MyBatis로 updateProductReview() 실행");
		mybatis.update("productReviewDAO.updateProductReview", review);
	}
	
	//리뷰 삭제
	public void deleteProductReview(Review review) {
		System.out.println("===> MyBatis로 deleteProductReview() 실행");
		mybatis.delete("productReviewDAO.deleteProductReview", review);
	}		
	
	//리뷰 1개 조회
	public Review getProductReview(Review review) {
		System.out.println("===> MyBatis로 getProductReview() 실행");
		return mybatis.selectOne("ProductReview.selectProductReview", review);
	}
	
	public List<Review> getProductReviewList() {
		
		return null;
	}	
	
}
