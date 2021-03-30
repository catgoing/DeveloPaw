package ga.bowwow.controller.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;

@Controller
@SessionAttributes("pet") //세션에 저장
public class PetController {
	
	private PetService petService;
	
	public PetController() {
		System.out.println(">>PetController() 객체 생성");		
	}
	
	@RequestMapping("/getPetInfoList.do")
	public String getPetList(Pet pet) {
		System.out.println("....> 반려동물 리스트를 가져옵니다");
		
		return "myPetInfoList.jsp";
	}
	
	//ajax이용
	@RequestMapping("/insertPetInfo.do")
	public int ajaxInsertPetInfo(Pet pet) {
		System.out.println("반려동물 정보 입력");
		System.out.println("pet:"+ pet);
				
		return petService.insertPetInfo(pet);		
	}
	//ajax이용	
	@RequestMapping("/updatePetInfo.do")
	public int ajaxUpdatePetInfo(Pet pet, Model model) {
		System.out.println("반려동물 정보 수정");
		System.out.println("pet:"+ pet);
		
		return petService.updatePetInfo(pet);
	}
	//ajax이용
	@RequestMapping("/deletePetInfo.do")
	public int ajaxDeletePetInfo(Pet pet) {
		System.out.println("반려동물 정보 삭제");
		System.out.println("pet:"+pet);
		
		return petService.deletePetInfo(pet);
	}
}
