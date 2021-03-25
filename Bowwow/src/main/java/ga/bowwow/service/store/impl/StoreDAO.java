package ga.bowwow.service.store.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.store.Products;

@Repository("storeDAO")
public class StoreDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public StoreDAO() {
		System.out.println(">> StoreDAO 객체 생성");
	}
	
	public List<Products> getDogProductList(Products products) {
		return mybatis.selectList("Store.dogProductList", products);
	}
	
	public List<Products> getCatProductList(Products products) {
		return mybatis.selectList("Store.catProductList", products);
	}
	
	
	
	
	
	
}
