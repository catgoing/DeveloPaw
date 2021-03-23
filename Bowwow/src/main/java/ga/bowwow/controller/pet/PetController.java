package ga.bowwow.controller.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;

@Controller
//@SessionAttributes("pet") //세션에 저장
public class PetController {
	
	private PetService petService;
	
	public PetController() {
		System.out.println(">>PetController() 객체 생성");		
	}
	
	public String getPetList(Pet pet) {
		System.out.println("....> 반려동물 리스트를 가져옵니다");
		return null;
	}
	
//	@RequestMapping("/updatePetInfo.do")
//	public String updatePetInfo(Pet pet, Model model) {
//		
//		return "/tiles/myPetInfo.do";
//	}
	
	
//	@RequestMapping("/myPageMain.do")
//	public String getPetList(Pet pet) {
//		System.out.println(">> mypagemain 오픈!");
//		petService.getPetInfo(pet);
//		
//		return "myPageMain.do";
//	}
	
	
	
}
