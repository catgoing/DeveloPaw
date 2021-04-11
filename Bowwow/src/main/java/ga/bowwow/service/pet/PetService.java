package ga.bowwow.service.pet;

import java.util.List;

import ga.bowwow.service.user.VO.UserAccount;

public interface PetService {
	int insertPetInfo(Pet pet);
	int updatePetInfo(Pet pet);
	int deletePetInfo(Pet pet);
	Pet getPetInfo(Pet pet);
	List<Pet> getPetInfoList(Pet pet);
	List<Pet> getMyHomePetList(int member_serial);
}
