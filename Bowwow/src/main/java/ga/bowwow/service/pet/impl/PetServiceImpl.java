package ga.bowwow.service.pet.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;

@Service
public class PetServiceImpl implements PetService {
	
	private PetDAO petDAO;
	
	public PetServiceImpl() {
		System.out.println(">> PetServiceImpl() 객체생성!!!");
	}
	
	@Override
	public void insertPetInfo(Pet pet) {
		petDAO.insertPetInfo(pet);
	}

	@Override
	public void updatePetInfo(Pet pet) {
		//petDAO.updatePetInfo(pet);
	}

	@Override
	public void deletePetInfo(Pet pet) {
		//petDAO.deletePetInfo(pet);
	}

	@Override
	public List<Pet> getPetInfo(Pet pet) {
		//return petDAO.getPetInfo(pet);
		return null;
	}

}
