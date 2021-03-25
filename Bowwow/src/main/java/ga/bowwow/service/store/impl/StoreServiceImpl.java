package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Products;
import ga.bowwow.service.store.StoreService;

@Service
public class StoreServiceImpl implements StoreService {
	
	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public void insertProducts(Products products) {

	}

	@Override
	public void updateProducts(Products products) {

	}

	@Override
	public void deleteProducts(Products products) {

	}

	@Override
	public Products getProducts(Products products) {
		return null;
	}


	@Override
	public List<Products> getDogProductList(Products products) {
		return storeDAO.getDogProductList(products);
	}
	
	@Override
	public List<Products> getCatProductList(Products products) {
		return storeDAO.getCatProductList(products);
	}

}
