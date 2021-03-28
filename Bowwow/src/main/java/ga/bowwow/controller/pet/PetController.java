package ga.bowwow.controller.pet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;

@Controller
@SessionAttributes("petList") //pet이라는 model을 세션에 저장
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
	public String getPetInfoList(Pet pet, Model model) {
		System.out.println("....> 반려동물 리스트를 가져옵니다");
		
		List<Pet> petList = petService.getPetInfoList(pet);
		for (Pet pet2 : petList) {
			System.out.println("pet : " + pet2.toString());
		}
		
		model.addAttribute("petList", petList);
		System.out.println("pet리스트를 넘겨줄게요~");
		
		return "myPetInfoList3";
	}
	
	//ajax이용 - 상세정보
	//produces = "application/text; charset=UTF-8" 
	// - 가져온 데이터 전송시 한글깨짐방지
	@RequestMapping(value= "/ajaxGetPetInfo", 
			produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String ajaxGetPetInfo(Pet pet) {
		System.out.println("ajax 반려동물정보를 가져옵니다");
						
		Pet petData = petService.getPetInfo(pet);
		System.out.println("petData : " + petData.toString());
		
		Gson gson = new Gson();
		String petDetail = gson.toJson(petData);

		System.out.println("petDetail : " + petDetail);
		
		return petDetail;		
	}
	
	//ajax이용
	@RequestMapping(value="/insertPetInfo", method = RequestMethod.POST)
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
	@RequestMapping(value="/ajaxDeletePetInfo")
	public String ajaxDeletePetInfo(Pet pet) {
		System.out.println("ajax 반려동물 정보 삭제 실행!!");
		System.out.println("pet:"+pet);
		
		String result = petService.deletePetInfo(pet) + "";
		System.out.println(result);
		
		return result;
	}
}
