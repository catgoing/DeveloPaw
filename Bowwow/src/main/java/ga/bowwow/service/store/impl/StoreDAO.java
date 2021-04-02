package ga.bowwow.service.store.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.store.CartList;
import ga.bowwow.service.store.Inquiry;
import ga.bowwow.service.store.Product;
import ga.bowwow.service.store.Review;

@Repository("storeDAO")
public class StoreDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public StoreDAO() {
		System.out.println(">> StoreDAO 객체 생성");
	}
	
	// 상품 관련 dao
	public Product getProductDetail(int p_id) {
	    return mybatis.selectOne("Store.getProductDetail", p_id);
	}

	public List<Product> getProductList(Product product) {
		return mybatis.selectList("Store.ProductList", product);
	}
	
	
	// 장바구니 관련 dao
	public void addCart(CartList cartList) {
		mybatis.insert("Cart.addCart", cartList);
	}
	
	public List<CartList> getCartList(String id) {
		return mybatis.selectList("Cart.getCartList", id);
	}
	
	public int pidCheck(CartList cartList) {
		return mybatis.selectOne("Cart.cartCheck", cartList);
		
	}
	
	
	// 리뷰 관련 dao
	public void insertReview(Review review) {
		System.out.println("-----------------------");
		System.out.println(review);
		mybatis.insert("StoreReview.insertProductReview", review);
	}

	public void deleteReview(int review_id) {
		System.out.println("리뷰 삭제" + review_id);
		mybatis.delete("StoreReview.deleteProductReview", review_id);
	}

	public Review getLastReview(int p_id) {
		return mybatis.selectOne("StoreReview.getLastReview", p_id);
	}

	public List<Review> getReviewList(int p_id) {
		System.out.println("확인용");
		return mybatis.selectList("StoreReview.reviewList", p_id);
	}
	public void insertInquiry(Inquiry inquiry) {
		System.out.println("문의 추가 : " + inquiry);
		mybatis.insert("StoreInquiry.insertInquiry", inquiry);
	}

}




























