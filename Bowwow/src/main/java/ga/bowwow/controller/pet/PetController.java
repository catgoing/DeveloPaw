package ga.bowwow.controller.pet;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;
import ga.bowwow.service.user.UserAccount;

@Controller
@SessionAttributes("petList") //pet이라는 model을 세션에 저장
public class PetController {
	
	@Autowired
	private PetService petService;

	private static String member_serial;
	
	public PetController() {
		System.out.println(">>PetController() 객체 생성");		
	}
	
	public String idGetTest(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserAccount user = (UserAccount)session.getAttribute("userDTO");
		
		return member_serial = user.getMemberSerial();
	}
	
	@RequestMapping(value = "/mypage/")
	public String myPageMain() {
		return "myPageMain";
	}
	
	@RequestMapping(value = "/myInfo/")
	public String myInfo() {
		return "/mypage/myInfo";
	}
	
	@GetMapping(value="/getPetInfoList")
	public String getPetInfoList(Pet pet, Model model, HttpServletRequest request) {
		System.out.println("....> 반려동물 리스트를 가져옵니다!!");

		pet.setMember_serial("1");
		System.out.println("pet " + pet); //member_serial
		
		List<Pet> petList = petService.getPetInfoList(pet);
		
		model.addAttribute("petList", petList);
		System.out.println("pet리스트를 넘겨줄게요~");
		
		return "/mypage/myPetInfoList3";
	}
	
	//ajax이용 - 상세정보
	//produces = "application/text; charset=UTF-8" 
	// - 가져온 데이터 전송시 한글깨짐방지
	@PostMapping(value= "/ajaxGetPetInfo", 
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
	
	//public String InsertPetInfo(Pet pet, HttpServletRequest request,  @RequestParam(value="image_source", required=false)MultipartFile file) {
	@PostMapping(value="/insertPetInfo")
				  //@RequestBody : 받은 거 json으로 바꿔줌
	@ResponseBody //json으로 변환해서 보내줌!
	//public int InsertPetInfo(@RequestBody Pet pet) {
	public int InsertPetInfo(Pet pet) {
		System.out.println("> 반려동물 정보 입력");
		
		int result = petService.insertPetInfo(pet);		
		System.out.println("pet~~:"+ pet);
		
		
		return 1;
	}
	
//	@PostMapping(value="/insertPetInfo")
//	public String InsertPetInfo(HttpServletRequest request) {
//		System.out.println("> 반려동물 정보 입력");
//		
//		//pet.setMember_serial(member_serial); 이거 사용할 것
//		//pet.setMember_serial("1"); //테스트용 serial입력
//		
//		Pet pet = new Pet();
//		pet.setMember_serial(request.getParameter("member_serial"));
//		pet.setAnimal_type(request.getParameter("animal_type"));
//		pet.setPet_name(request.getParameter("pet_name"));
//		pet.setPet_gender(request.getParameter("pet_gender"));
//		pet.setPet_variety(request.getParameter("pet_variety"));
//		pet.setPet_age(Integer.parseInt(request.getParameter("pet_age")));
//		pet.setPet_weight(Integer.parseInt(request.getParameter("pet_weight")));
//		pet.setPet_size(request.getParameter("pet_size"));
//		
//		Date pet_birth = null;
//		if(request.getParameter("pet_birth") == null || request.getParameter("pet_birth").equals("")) {
//			pet_birth = null;
//		} else {
//			pet_birth = Date.valueOf(request.getParameter("pet_birth"));			
//		}
//		pet.setPet_birth(pet_birth);
//		
//		pet.setNeck_length(Integer.parseInt(request.getParameter("neck_length")));
//		pet.setBack_length(Integer.parseInt(request.getParameter("back_length")));
//		pet.setChest_length(Integer.parseInt(request.getParameter("chest_length")));
//		pet.setTnr(request.getParameter("tnr"));
//		pet.setPet_etc(request.getParameter("pet_etc"));
//
//		System.out.println("pet~~:"+ pet);
//		
//		//int result = petService.insertPetInfo(pet);		
//		
//		return "redirect:/getPetInfoList";
//	}
	
	//ajax이용	
	@PostMapping("/updatePetInfo")
	public int ajaxUpdatePetInfo(Pet pet, Model model) {
		System.out.println("> 반려동물 정보 수정");
		System.out.println("pet :"+ pet);
		
		return petService.updatePetInfo(pet);
	}
	
	//ajax이용
	@PostMapping(value="/ajaxDeletePetInfo")
	@ResponseBody
	public int ajaxDeletePetInfo(Pet pet) {
		System.out.println("ajax 반려동물 정보 삭제 실행!!");
		System.out.println("pet :"+pet);
		
		int result = petService.deletePetInfo(pet);
		System.out.println(result);

		return result;
	}
}
