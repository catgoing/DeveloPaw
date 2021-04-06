package ga.bowwow.service.pet.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.pet.Pet;

@Repository("PetDAO")
public class PetDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public PetDAO() {
		System.out.println(">> PetDAOMyBatis() 객체생성!!!");
	}
	
	//펫 정보 입력
	public int insertPetInfo(Pet pet) {
		System.out.println("--->> insertPetInfo() 실행");
		
		return mybatis.insert("PetInfo.insertPetInfo", pet);
	}
	//펫 정보 수정1 - 이미지있을때
	public int updatePetInfo(Pet pet) {
		System.out.println("--->> updatePetInfo() 실행");
		
		return mybatis.update("PetInfo.updatePetInfo", pet);
	}
	//펫 정보 수정2 - 이미지없을때
	public int updatePetInfo2(Pet pet) {
		System.out.println("--->> updatePetInfo() 실행");
		
		Map<String, Integer> serialMap = new HashMap<String, Integer>();
		int pet_serial = pet.getPet_serial();
		serialMap.put("pet_serial", pet_serial);
		
		mybatis.update("PetInfo.updatePetImg", serialMap); //수정시에 사진 빈칸처리
		return mybatis.update("PetInfo.updatePetInfo", pet); //후 다른 데이터도 수정
	}
	//펫 정보 삭제
	public int deletePetInfo(Pet pet) {
		System.out.println("--->> deletePetInfo() 실행");
		
		return mybatis.delete("PetInfo.deletePetInfo", pet);
	}
	//펫 정보 조회(개별) - petSerial이용
	public Pet getPetInfo(Pet pet){
		System.out.println("--->> getPetInfo() 실행");
		
		return mybatis.selectOne("PetInfo.getPetInfo", pet);
	}
	//펫 정보 조회(여러개) - memberSerial이용
	public List<Pet> getPetInfoList(Pet pet){
		System.out.println("--->> getPetInfoList() 실행");
		
		List<Pet> list = mybatis.selectList("PetInfo.getPetInfoList", pet);
		for (Pet pet2 : list) {
			System.out.println("pet: " + pet2.toString());
		}
		
		return list;
	}
}
