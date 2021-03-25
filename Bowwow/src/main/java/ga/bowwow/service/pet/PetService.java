package ga.bowwow.service.pet;

import java.util.List;

public interface PetService {
	int insertPetInfo(Pet pet);
	int updatePetInfo(Pet pet);
	int deletePetInfo(Pet pet);
	Pet getPetInfo(Pet pet);
	List<Pet> getPetInfoList(Pet pet);
}
