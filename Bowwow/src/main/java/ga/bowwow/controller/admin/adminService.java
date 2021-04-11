package ga.bowwow.controller.admin;

import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Product;

@Service
public interface adminService {
	void deleteProduct(Product vo);

	void updateProductStock(Product vo);

	void insertProduct(Product vo);
}