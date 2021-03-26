package ga.bowwow.service.store.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.store.Product;

@Repository("storeDAO")
public class StoreDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public StoreDAO() {
		System.out.println(">> StoreDAO 객체 생성");
	}
	
	public Product getProductDetailCat(int p_id) {
	    return mybatis.selectOne("Store.getProductDetail", p_id);
	}
	
	public Product getProductDetailDog(int p_id) {
	    return mybatis.selectOne("Store.getProductDetail", p_id);
	}
	
	public List<Product> getDogProductList(Product products) {
		return mybatis.selectList("Store.dogProductList", products);
	}
	
	public List<Product> getCatProductList(Product products) {
		return mybatis.selectList("Store.catProductList", products);
	}
	
	
	
	
	
	
}
