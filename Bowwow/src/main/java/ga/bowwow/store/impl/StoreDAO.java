package ga.bowwow.store.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.store.Products;

@Repository("storeDAO")
public class StoreDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public StoreDAO() {
		
	}
	
	public void insertProducts(Products products) {
		mybatis.insert("StoreDAO.insertProducts", products);
	}
}
