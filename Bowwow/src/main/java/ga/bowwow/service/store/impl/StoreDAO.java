package ga.bowwow.service.store.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	public List<Review> getReviewList(int p_id) {
		System.out.println("확인용");
		return mybatis.selectList("ProductsReview.reviewList", p_id);
	}

//	public List<Product> getCatProductList(Product products) {
//		return mybatis.selectList("Store.catProductList", products);
//	}


	public void insertReview(Review review) {
		System.out.println("-----------------------");
		System.out.println(review);
		mybatis.insert("ProductsReview.insertProductReview", review);
	}



}
