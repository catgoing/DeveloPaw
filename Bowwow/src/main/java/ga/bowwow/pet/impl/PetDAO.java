package ga.bowwow.pet.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.pet.Pet;

@Repository("PetDAO")
public class PetDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public PetDAO() {
		System.out.println(">> PetDAOMyBatis() 객체생성!!!");
	}
	
	//펫 입력
	public void insertPetInfo(Pet pet) {
		System.out.println("--->> insertPetInfo() 실행");
		mybatis.insert("PetInfo.insertPetInfo", pet);
	}
	//펫 조회 - memberSerial이용
	public List<Pet> getPetInfo(Pet pet){
		System.out.println("--->> getPetInfo() 실행");
		return mybatis.selectList("PetInfo.getPetInfo", pet);
	}
}
