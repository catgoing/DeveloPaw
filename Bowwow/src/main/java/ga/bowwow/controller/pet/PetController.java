package ga.bowwow.controller.pet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;

@Controller
@SessionAttributes("pet") //pet이라는 model을 세션에 저장
public class PetController {
	
	@Autowired
	private PetService petService;
	
	public PetController() {
		System.out.println(">>PetController() 객체 생성");		
	}
	
	@RequestMapping(value = "/mypage/")
	public String myPageMain() {
		return "myPageMain";
	}
	
	@RequestMapping(value = "/mypage/getPetInfoList3")
	public String getPetList(Pet pet, Model model) {
		System.out.println("....> 반려동물 리스트를 가져옵니다");
		
		List<Pet> petList = petService.getPetInfoList(pet);
		for (Pet pet2 : petList) {
			System.out.println("pet : " + pet2.toString());
		}
		
		model.addAttribute("pet", petList);
		System.out.println("pet");
		
		return "myPetInfoList3";
	}
	
	//ajax이용
	@RequestMapping("/getPetInfo")
	@ResponseBody
	public Pet ajaxGetPetInfo(Pet pet) {
		System.out.println("ajax 반려동물정보를 가져옵니다");
		System.out.println("pet:"+ pet);
		Pet petDetail = petService.getPetInfo(pet);
		
		return petDetail;		
	}
	
	//ajax이용
	@RequestMapping("/insertPetInfo")
	public int ajaxInsertPetInfo(Pet pet) {
		System.out.println("ajax 반려동물 정보 입력");
		System.out.println("pet:"+ pet);
				
		return petService.insertPetInfo(pet);		
	}
	
	//ajax이용	
	@RequestMapping("/updatePetInfo")
	public int ajaxUpdatePetInfo(Pet pet, Model model) {
		System.out.println("ajax 반려동물 정보 수정");
		System.out.println("pet:"+ pet);
		
		return petService.updatePetInfo(pet);
	}
	
	//ajax이용
	@RequestMapping("/deletePetInfo")
	public int ajaxDeletePetInfo(Pet pet) {
		System.out.println("ajax 반려동물 정보 삭제");
		System.out.println("pet:"+pet);
		
		return petService.deletePetInfo(pet);
	}
}
