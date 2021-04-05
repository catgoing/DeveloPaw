package ga.bowwow.controller.pet;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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

@Controller
@SessionAttributes("petList") //pet이라는 model을 세션에 저장
//@RequestMapping(value = "/mypage")
public class PetController {

	@Autowired
	private PetService petService;
<<<<<<< HEAD

	//private static int member_serial;
=======
	
	private HttpServletRequest request;
	private int member_serial = 994;
<<<<<<< HEAD
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
=======
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))

	public PetController() {
		System.out.println(">>PetController() 객체 생성");
	}

	/*
	 * public int idGetTest(HttpServletRequest request) { HttpSession session =
	 * request.getSession(); UserAccount user =
	 * (UserAccount)session.getAttribute("userDTO");
	 * 
	 * return member_serial = user.getMemberSerial(); }
	 */

	@RequestMapping(value = "/mypage/myPageMain")
	public String myPageMain() {
<<<<<<< HEAD
<<<<<<< HEAD
=======
		
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
=======
		
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
		return "myPageMain";
	}

	@RequestMapping(value = "/myInfo/")
	public String myInfo() {
<<<<<<< HEAD
		return "/mypage/myInfo";
=======
		return "myInfo";
	}
	@RequestMapping(value = "/mypage/myPoint")
	public String myPoint() {
		return "/mypage/myPoint";
	}
	@RequestMapping(value = "/mypage/myInquiry2")
	public String myInquiry2() {
		return "/mypage/myInquiry2";
	}
	@RequestMapping(value = "/mypage/myPostList")
	public String myPostList() {
		return "/mypage/myPostList";
	}
	@RequestMapping(value = "/mypage/withdrawl")
	public String withdrawl() {
		return "/mypage/withdrawl";
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
	}

	@GetMapping(value="/getPetInfoList")
	public String getPetInfoList(Pet pet, Model model, HttpServletRequest request) {
		System.out.println("....> 반려동물 리스트를 가져옵니다!!");
<<<<<<< HEAD

		//pet.setMember_serial(member_serial);
		System.out.println("pet " + pet); //member_serial
=======
		System.out.println("멤버시리얼 :" + member_serial);
		System.out.println("pet " + pet); //member_serial
		HttpSession session = request.getSession();
		UserAccount user = (UserAccount)session.getAttribute("user");
		System.out.println(user.getMemberSerial());
		
		pet.setMember_serial(member_serial);
		
		String default_url = "https://projectbit.s3.us-east-2.amazonaws.com/petImg/6262857e-1887-46fc-b77c-9209935f8657.jpg";
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
		
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
<<<<<<< HEAD
<<<<<<< HEAD
		
		//pet.setMember_serial(member_serial);
=======
=======
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
		String default_url = "https://projectbit.s3.us-east-2.amazonaws.com/petImg/6262857e-1887-46fc-b77c-9209935f8657.jpg";
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
		
		pet.setMember_serial(member_serial);
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
		
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
<<<<<<< HEAD
<<<<<<< HEAD
		//pet.setMember_serial(member_serial);
=======
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
=======
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
		
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
			
<<<<<<< HEAD
<<<<<<< HEAD
			pet.setImage_source_oriname(fs_url + foldername + "/" + imgName);
			System.out.println(fs_url + foldername + "/" + imgName);
			
			
			result = petService.insertPetInfo(pet);			
		} else if(pet.getImage_source() == null) {
//			String nothing = "non-upload";
//			pet.setImage_source(nothing);
			result = petService.insertPetInfo(pet);
		}
		
		return 1;
=======
			pet.setImage_source_oriname(foldername + "/" + imgName);
			
			System.out.println(fs_url + foldername + "/" + imgName);
			
=======
			pet.setImage_source_oriname(foldername + "/" + imgName);
			
			System.out.println(fs_url + foldername + "/" + imgName);
			
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
			result = petService.insertPetInfo(pet);	
			
		} else if(pet.getImage_source() == null) {
			result = petService.insertPetInfo(pet);
		}
		
		return result;
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
	}

	//ajax이용
	@PostMapping("/ajaxUpdatePetInfo")
	@ResponseBody
	public int ajaxUpdatePetInfo(Pet pet, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println("> 반려동물 정보 수정");
		System.out.println("pet~~:"+ pet);
<<<<<<< HEAD
<<<<<<< HEAD
		//pet.setMember_serial(member_serial);
		
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
		
=======
		
=======
		
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
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
			
			pet.setImage_source_oriname(foldername + "/" + imgName);
			
			System.out.println(fs_url + foldername + "/" + imgName);
			
			result = petService.updatePetInfo(pet);	
			
		} else if(pet.getImage_source() == null) {
			result = petService.updatePetInfo(pet);
		}
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
		return result;
	}

	//ajax이용
	@PostMapping(value="/ajaxDeletePetInfo")
	@ResponseBody
	public int ajaxDeletePetInfo(Pet pet) {
		System.out.println("ajax 반려동물 정보 삭제 실행!!");
		System.out.println("pet :"+pet);
<<<<<<< HEAD
<<<<<<< HEAD
		//pet.setMember_serial(member_serial);
		
=======
=======
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
		
		pet.setMember_serial(member_serial);

>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
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
