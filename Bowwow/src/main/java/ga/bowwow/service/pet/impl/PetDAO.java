package ga.bowwow.service.pet.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.store.Order;
import ga.bowwow.service.user.VO.UserAccount;
import ga.bowwow.service.user.VO.UserDTO;

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
	//펫 정보 수정
	public int updatePetInfo(Pet pet) {
		System.out.println("--->> updatePetInfo() 실행");
		
		return mybatis.update("PetInfo.updatePetInfo", pet);
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
	//마이홈 출력용 반려동물 정보(최신순)
	public List<Pet> getMyHomePetList(int member_serial) {
		System.out.println("--->> getMyHomePetList() 실행");
		
		List<Pet> list = mybatis.selectList("PetInfo.mainSearchAnimal", member_serial);
		String default_url = "https://projectbit.s3.us-east-2.amazonaws.com/petImg/6262857e-1887-46fc-b77c-9209935f8657.jpg";
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
		
		for(Pet onePet : list) {
			if(onePet.getImage_source_oriname() == null) {
				onePet.setImage_source_oriname(default_url);
			} else {
				String base_url = onePet.getImage_source_oriname();
				onePet.setImage_source_oriname(fs_url + base_url);
			}
		}
		return list;
	}
}
