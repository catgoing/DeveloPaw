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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonClientException;
import com.google.gson.Gson;

import ga.bowwow.controller.common.MultipartController;
import ga.bowwow.service.pet.Pet;
import ga.bowwow.service.pet.PetService;
import ga.bowwow.service.user.VO.UserDTO;

@Controller
@SessionAttributes("petList") //pet이라는 model을 세션에 저장
public class PetController {

	@Autowired
	private PetService petService;

	public PetController() {
		System.out.println(">>PetController() 객체 생성");
	}

	//반려동물리스트
	@RequestMapping(value="/getPetInfoList")
	public String getPetInfoList(Pet pet, Model model, HttpServletRequest request) {
		System.out.println("....> 반려동물 리스트를 가져옵니다!!");
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		
		pet.setMember_serial(member_serial);
		
		System.out.println("pet " + pet);
		
		String default_url = "petImg/6262857e-1887-46fc-b77c-9209935f8657.jpg";
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
		
		List<Pet> petList = petService.getPetInfoList(pet);
		for(Pet onePet : petList) {
			if(onePet.getImage_source_oriname()=="" || 
					onePet.getImage_source_oriname()==null) {
				onePet.setImage_source_oriname(default_url);
			} 
//			else {
//				String base_url = onePet.getImage_source_oriname();
//				onePet.setImage_source_oriname(base_url);
//			}
		}
		
		model.addAttribute("petList", petList);
		System.out.println("pet리스트를 넘겨줄게요~");

		return "/mypage/myPetInfoList";
	}
	
	//ajax이용 - 반려동물 상세정보
	//produces = "application/text; charset=UTF-8" - 가져온 데이터 전송시 한글깨짐방지
	@RequestMapping(value="/ajaxGetPetInfo", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String ajaxGetPetInfo(Pet pet, Model model, HttpServletRequest request) {
		System.out.println("ajax 반려동물정보를 가져옵니다!");
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		
		pet.setMember_serial(member_serial);
		
		String default_url = "https://projectbit.s3.us-east-2.amazonaws.com/petImg/6262857e-1887-46fc-b77c-9209935f8657.jpg";
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
		
		Pet petData = petService.getPetInfo(pet);
		System.out.println("petData : " + petData.toString());
		//생일정보 있을 때 날짜출력 수정(yyyy-MM-dd)
		if(petData.getPet_birth() != null) {
			String birth = petData.getPet_birth().substring(0, 10);
			petData.setPet_birth(birth);
		}
		//디폴트이미지 설정
		if(petData.getImage_source_oriname() == null) {
			petData.setImage_source_oriname(default_url);
		}
		else {
			String base_url = petData.getImage_source_oriname();
	//		petData.setImage_source_oriname(fs_url + base_url);
			petData.setImage_source_oriname(base_url);
		}
		
		Gson gson = new Gson();
		String petDetail = gson.toJson(petData);
		
		model.addAttribute("petDetail", petDetail);
		System.out.println("petDetail : " + petDetail);

		return petDetail;
	}

	//ajax X - 반려동물 정보 등록
	@RequestMapping(value="/insertPetInfo")
	//@ResponseBody //json으로 변환해서 보내줌!-@RequestBody : 받은 거 json으로 바꿔줌
	public String insertPetInfo(Pet pet, @RequestParam(value="file", required = false) MultipartFile file, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println("> insert 반려동물 정보 입력!");
		System.out.println("pet~~:"+ pet);
		System.out.println(file);
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		
		pet.setMember_serial(member_serial);
		
		int result = 0;
		if(!file.isEmpty()) { //첨부한 파일이 있을 때
			System.out.println("insert 사진있음~");
			String foldername = "petImg";
			
			String originalFileName = file.getOriginalFilename();
			System.out.println("originalFileName : " + originalFileName);
			String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
			String savedFileName = UUID.randomUUID() + extension;
			
			File uploadfile = new File(originalFileName);
			file.transferTo(uploadfile);
			String imgName = mc.s3upload(uploadfile, savedFileName, foldername);
			
			pet.setImage_source_oriname(foldername + "/" + imgName);
			pet.setImage_source(foldername + "/" + imgName);
			
			String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
			System.out.println(fs_url + foldername + "/" + savedFileName);
			System.out.println("입력할 pet : " + pet);
			
			result = petService.insertPetInfo(pet);	
		
		} else { //첨부한 파일이 없을 때
			System.out.println("insert 사진없음!");
			result = petService.insertPetInfo(pet);	
		}
		return "redirect:/getPetInfoList";
	}
	
	//ajax이용X -- 반려동물 정보 수정
	@RequestMapping(value="/updatePetInfo")
	//@ResponseBody
	public String updatePetInfo(Pet pet, @RequestParam(value="file", required = false) MultipartFile file, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println("> update 반려동물 정보 입력!");
		System.out.println("pet~~:"+ pet);
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		
		pet.setMember_serial(member_serial);
		
		System.out.println("서엉고옹~");
		//System.out.println(file);
	//	String d_img = pet.getImage_source_oriname().substring(45);
		String d_img = pet.getImage_source_oriname();
		System.out.println("수정 전 db에 있는 이미지 주소" + d_img);
		
		int result = 0;
		if(!file.isEmpty()) { //첨부파일이 있을 때
			System.out.println("update 사진있음~~");
			String foldername = "petImg";
			//int thumb_w = 200;
			//int thumb_h = 200;
			
			String originalFileName = file.getOriginalFilename();
			System.out.println("originalFileName : " + originalFileName);
			String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
			String savedFileName = UUID.randomUUID() + extension;
			
			File uploadfile = new File(originalFileName);
			file.transferTo(uploadfile);
			String imgName = mc.s3upload(uploadfile, savedFileName, foldername);
			
			String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
			
			pet.setImage_source_oriname(foldername + "/" + imgName);
			pet.setImage_source(foldername + "/" + imgName);
			
			System.out.println(fs_url + foldername + "/" + savedFileName);
			System.out.println("입력할 pet : " + pet);
			result = petService.updatePetInfo(pet);	
		
		} else { //첨부한 파일이 없을 때 -- image_source에 null값이 들어감!!!노우~~
			System.out.println("update 사진없음!!!");
			pet.setImage_source_oriname(d_img);
			result = petService.updatePetInfo(pet);	
			result = 0;
		}
		return "redirect:/getPetInfoList";
	}

	//ajax이용X -- 반려동물 정보 삭제
	@RequestMapping(value="/deletePetInfo")
	//@ResponseBody
	public String deletePetInfo(Pet pet, HttpServletRequest request) {
		System.out.println("ajax 반려동물 정보 삭제 실행!!");
		System.out.println("pet :"+pet);
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("userDTO");
		int member_serial = user.getMember_serial();
		
		pet.setMember_serial(member_serial);
		
		int result = petService.deletePetInfo(pet);
		System.out.println(result);

		return "redirect:/getPetInfoList";
	}
	

	//petVO image_source를 multipartfile타입으로 만들었을 때, null인 경우를 처리해주려고 추가했던 databind
	@InitBinder
	public void dataBind(WebDataBinder webDataBinder) {
		webDataBinder.setBindEmptyMultipartFiles(false);
	}
}
