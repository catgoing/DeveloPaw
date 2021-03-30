package ga.bowwow.service.store.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.store.Cartlist;
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

	public Product getProductDetail(int p_id) {
	    return mybatis.selectOne("Store.getProductDetail", p_id);
	}

	public Product getProductDetailDog(int p_id) {
	    return mybatis.selectOne("Store.getProductDetail", p_id);
	}

	public List<Product> getProductList(Product product) {
		return mybatis.selectList("Store.ProductList", product);
	}



//	public List<Product> getCatProductList(Product products) {
//		return mybatis.selectList("Store.catProductList", products);
//	}

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

	public void insertCartlist(Cartlist cartlist) {
		System.out.println("장바구니 추가");
		mybatis.insert("StoreCartlist.insertCartlist", cartlist);
		
	}

	public List<Cartlist> getCartlist(Cartlist cartlist) {
		System.out.println("장바구니 목록 출력");
		return mybatis.selectList("StoreCartlist.cartlistList", cartlist);
	}

	public void deleteCartlist(int cart_id) {
		System.out.println("장바구니 삭제 : " + cart_id );
		mybatis.delete("StoreCartlist.deleteCartlist", cart_id);
	}
	
	public void insertInquiry(Inquiry inquiry) {
		System.out.println("문의 추가 : " + inquiry);
		mybatis.insert("StoreInquiry.insertInquiry", inquiry);
	}

	public void deleteInquiry(int inquiry_no) {
		System.out.println("문의 삭제 : " + inquiry_no);
		mybatis.delete("StoreInquiry.deleteInquiry", inquiry_no);
	}

	public List<Inquiry> getInquiryList(Inquiry inquiry) {
		System.out.println("전체 문의 출력 : " + inquiry);
		return mybatis.selectList("StoreInquiry.inquiryList", inquiry);
	}

	
}
