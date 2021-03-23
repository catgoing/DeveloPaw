package ga.bowwow.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
//@SessionAttributes("pet")
public class PetController {
	
	@Autowired
	private PetService petService;
	
	public PetController() {
		System.out.println(">>PetController() 객체 생성");		
	}
	
	public String getPetList(Pet pet) {
		System.out.println("....> 반려동물 리스트를 가져옵니다");
		return null;
	}
	
//	@RequestMapping("/myPageMain.do")
//	public String getPetList(Pet pet) {
//		System.out.println(">> mypagemain 오픈!");
//		petService.getPetInfo(pet);
//		
//		return "myPageMain.do";
//	}
	
	
	
}
