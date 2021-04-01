package ga.bowwow.controller.pet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResizableByteArrayOutputStream;
import org.springframework.web.bind.annotation.GetMapping;
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
import ga.bowwow.service.user.UserAccount;

@Controller
@SessionAttributes("petList") //pet이라는 model을 세션에 저장
//@RequestMapping(value = "/mypage")
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
		for(Pet p : petList) {
			if(p.getImage_source_oriname()==null) {
				p.setImage_source_oriname("https://projectbit.s3.us-east-2.amazonaws.com/petImg/6262857e-1887-46fc-b77c-9209935f8657.jpg");
			}
		}
		
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
	public int InsertPetInfo(Pet pet, HttpServletRequest request, MultipartFile mf,MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println("> 반려동물 정보 입력");
		System.out.println("pet~~:"+ pet);
		
		String foldername = "petImg";
		
		//String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		//String fileRoot = contextRoot+"resources/upload/";
		
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

		int result = petService.insertPetInfo(pet);
		
		return 1;
	}

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

	public File multipartToFile(MultipartFile mFile) throws IllegalStateException, IOException {
		File file = new File(mFile.getOriginalFilename());
		mFile.transferTo(file);
		return file;
	}
}
