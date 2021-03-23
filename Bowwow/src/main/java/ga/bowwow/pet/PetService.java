package ga.bowwow.pet;

import java.util.List;

public interface PetService {
	void insertPetInfo(Pet pet);
	void updatePetInfo(Pet pet);
	void deletePetInfo(Pet pet);
	List<Pet> getPetInfo(Pet pet);
}
