package ga.bowwow.controller.admin;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.store.Product;


@Repository("adminDAO")
public class adminDAO {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public adminDAO() {
		System.out.println(">> adminDAO");
	}
	
	public void insertProduct(Product vo) {
		mybatis.insert("Admin.insertProduct", vo);
	}
	
	public void deleteProduct(Product vo) {
		mybatis.insert("Admin.deleteProduct", vo);
	}
	
	public void updateProductStock(Product vo) {
		mybatis.insert("Admin.updateProductStock", vo);
	}
}
