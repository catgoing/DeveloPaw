package ga.bowwow.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Product;


@Service("adminService")
public class adminserviceImpl implements adminService{
	@Autowired
	private adminDAO adminDAO;
	
	public adminserviceImpl() {
		System.out.println(">> admin");
	}
	
	@Override
	public void deleteProduct(Product vo) {
		adminDAO.deleteProduct(vo);
	}
	
	@Override
	public void updateProductStock(Product vo) {
		adminDAO.updateProductStock(vo);
	}

	@Override
	public void insertProduct(Product vo) {
		adminDAO.insertProduct(vo);
	}
}
