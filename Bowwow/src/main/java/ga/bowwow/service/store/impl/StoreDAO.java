package ga.bowwow.service.store.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.store.Order;
import ga.bowwow.service.store.Product;
import ga.bowwow.service.store.Review;

@Repository("storeDAO")
public class StoreDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public StoreDAO() {
		System.out.println(">> StoreDAO 객체 생성");
	}
	
	
	// 스토어 상품 관리
	public Product getProductDetail(int p_id) {
	    return mybatis.selectOne("Store.getProductDetail", p_id);
	}

	public List<Product> getProductList(Product product) {
		return mybatis.selectList("Store.ProductList", product);
	}
	
	
	// 상품 후기
	public void insertReview(Review review) {
		System.out.println("후기 등록 : " + review);
		mybatis.insert("StoreReview.insertProductReview", review);
	}

	public void deleteReview(int review_id) {
		System.out.println("후기 삭제" + review_id);
		mybatis.delete("StoreReview.deleteProductReview", review_id);
	}

	public Review getLastReview(int p_id) {
		System.out.println("가장 마지막에 작성한 후기 가져오기");
		return mybatis.selectOne("StoreReview.getLastReview", p_id);
	}

	public List<Review> getReviewList(int p_id) {
		System.out.println("상품에 작성된 후기 목록 출력");
		return mybatis.selectList("StoreReview.reviewList", p_id);
	}
	
	// 상품 주문
	public void insertOrder(Order order) {
		System.out.println("주문내역 추가 : " + order);
		mybatis.insert("StoreOrder.insertOrder", order);
	}

	public void updateOrder(Order order) {
		System.out.println("주문내역 수정 : " + order);
		mybatis.update("StoreOrder.updateOrder", order);
	}
	
	public void deleteOrder(int order_id) {
		System.out.println("삭제할 주문내역 : " + order_id);
		mybatis.delete("StoreOrder.deleteOrder", order_id);
	}
	
	public List<Order> getOrderList(int member_serial) {
		System.out.println("회원 주문 내역 리스트 : " + member_serial);
		return mybatis.selectList("StoreOrder.orderList", member_serial);
	}

	public Order getOrderDetail(int order_id) {
		System.out.println("주문 상세 내역 : " + order_id);
		return mybatis.selectOne("StoreOrder.orderDetail", order_id);
	}

}
