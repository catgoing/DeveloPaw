package ga.bowwow.controller.pet;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonClientException;
import com.google.gson.Gson;

import ga.bowwow.controller.common.MultipartController;
import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;
import ga.bowwow.service.user.VO.UserAccount;

@Controller
@SessionAttributes("petList") //pet이라는 model을 세션에 저장
//@RequestMapping(value = "/mypage")
public class PetController {

	@Autowired
	private PetService petService;

	private static int member_serial;

	public PetController() {
		System.out.println(">>PetController() 객체 생성");
	}

	public int idGetTest(HttpServletRequest request) {
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

		pet.setMember_serial(member_serial);
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
		
		pet.setMember_serial(member_serial);
		
		Pet petData = petService.getPetInfo(pet);
		System.out.println("petData : " + petData.toString());

		Gson gson = new Gson();
		String petDetail = gson.toJson(petData);

		System.out.println("petDetail : " + petDetail);

		return petDetail;
	}

	@PostMapping(value="/ajaxInsertPetInfo")
	@ResponseBody //json으로 변환해서 보내줌!-@RequestBody : 받은 거 json으로 바꿔줌
	public int ajaxInsertPetInfo(Pet pet, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println("> 반려동물 정보 입력");
		System.out.println("pet~~:"+ pet);
		pet.setMember_serial(member_serial);
		
		int result = 0;
		if(pet.getImage_source() != null) {
			String foldername = "petImg";
			MultipartFile pfile = pet.getImage_source(); //저장하려는 파일
			File file = multipartToFile(pfile);
			
			String originalFileName = pfile.getOriginalFilename();
			String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
			String savedFileName = UUID.randomUUID() + extension;
			
			System.out.println(file);
			
			String imgName = mc.s3upload(file, savedFileName, foldername);
			System.out.println(imgName);
			String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
			
			pet.setImage_source_oriname(fs_url + foldername + "/" + imgName);
			System.out.println(fs_url + foldername + "/" + imgName);
			
			
			result = petService.insertPetInfo(pet);			
		} else if(pet.getImage_source() == null) {
//			String nothing = "non-upload";
//			pet.setImage_source(nothing);
			result = petService.insertPetInfo(pet);
		}
		
		return 1;
	}

	//ajax이용
	@PostMapping("/ajaxUpdatePetInfo")
	@ResponseBody
	public int ajaxUpdatePetInfo(Pet pet, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println("> 반려동물 정보 수정");
		System.out.println("pet~~:"+ pet);
		pet.setMember_serial(member_serial);
		
		String foldername = "petImg";
		
		MultipartFile pfile = pet.getImage_source(); //저장하려는 파일
		File file = multipartToFile(pfile);
		
		String originalFileName = pfile.getOriginalFilename();
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
		String savedFileName = UUID.randomUUID() + extension;

		System.out.println(file);
		
		String imgName = mc.s3upload(file, savedFileName, foldername);
		System.out.println(imgName);
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
		
		pet.setImage_source_oriname(fs_url + foldername + "/" + imgName);
		System.out.println(fs_url + foldername + "/" + imgName);

		int result = petService.updatePetInfo(pet);
		
		return result;
	}

	//ajax이용
	@PostMapping(value="/ajaxDeletePetInfo")
	@ResponseBody
	public int ajaxDeletePetInfo(Pet pet) {
		System.out.println("ajax 반려동물 정보 삭제 실행!!");
		System.out.println("pet :"+pet);
		pet.setMember_serial(member_serial);
		
		int result = petService.deletePetInfo(pet);
		System.out.println(result);

		return result;
	}

	public File multipartToFile(MultipartFile mFile) throws IllegalStateException, IOException {
		File file = new File(mFile.getOriginalFilename());
		mFile.transferTo(file);
		return file;
	}
	
	@InitBinder
	public void dataBind(WebDataBinder webDataBinder) {
		webDataBinder.setBindEmptyMultipartFiles(false);
	}
}
