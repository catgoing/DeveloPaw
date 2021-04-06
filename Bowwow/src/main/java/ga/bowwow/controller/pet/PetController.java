package ga.bowwow.controller.pet;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	private HttpServletRequest request;
	private int member_serial;

	public PetController() {
		System.out.println(">>PetController() 객체 생성");
	}

	@RequestMapping(value = "/mypage/myPageMain")
	public String myPageMain() {
		member_serial = 1;
		return "myPageMain";
	}

	@RequestMapping(value = "/mypage/myInfo")
	public String myInfo() {
		return "myInfo";
	}
	@RequestMapping(value = "/mypage/myPoint")
	public String myPoint() {
		return "/mypage/myPoint";
	}
//	@RequestMapping(value = "/mypage/myInquiry")
//	public String myInquiry2() {
//		return "/mypage/myInquiry";
//	}
	@RequestMapping(value = "/mypage/myPostList")
	public String myPostList() {
		return "/mypage/myPostList";
	}
	@RequestMapping(value = "/mypage/withdrawl")
	public String withdrawl() {
		return "/mypage/withdrawl";
	}
	@GetMapping(value="/getPetInfoList")
	public String getPetInfoList(Pet pet, Model model, HttpServletRequest request) {
		System.out.println("....> 반려동물 리스트를 가져옵니다!!");
		System.out.println("멤버시리얼 :" + member_serial);
		
		int member = 1;
		pet.setMember_serial(member);
		System.out.println("pet " + pet);
		
		HttpSession session = request.getSession();
		UserAccount user = (UserAccount)session.getAttribute("user");
		System.out.println("멤~시리얼 : " + user.getMemberSerial());
		
		String default_url = "https://projectbit.s3.us-east-2.amazonaws.com/petImg/6262857e-1887-46fc-b77c-9209935f8657.jpg";
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
		
		List<Pet> petList = petService.getPetInfoList(pet);
		for(Pet onePet : petList) {
			if(onePet.getImage_source_oriname() == null) {
				onePet.setImage_source_oriname(default_url);
			} else {
				String base_url = onePet.getImage_source_oriname();
				onePet.setImage_source_oriname(fs_url + base_url);
			}
		}
		
		model.addAttribute("petList", petList);
		System.out.println("pet리스트를 넘겨줄게요~");

		return "/mypage/myPetInfoList";
	}
	
	//ajax이용 - 상세정보
	//produces = "application/text; charset=UTF-8"
	// - 가져온 데이터 전송시 한글깨짐방지
	@PostMapping(value= "/ajaxGetPetInfo",
			produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String ajaxGetPetInfo(Pet pet) {
		System.out.println("ajax 반려동물정보를 가져옵니다");
		
		String default_url = "https://projectbit.s3.us-east-2.amazonaws.com/petImg/6262857e-1887-46fc-b77c-9209935f8657.jpg";
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
		
		member_serial = 1;
		pet.setMember_serial(member_serial);
		
		Pet petData = petService.getPetInfo(pet);
		System.out.println("petData : " + petData.toString());
		//null(기본값)일때 설정
		
		//디폴트이미지 설정
		if(petData.getImage_source_oriname() == null) {
			petData.setImage_source_oriname(default_url);
		} else {
			String base_url = petData.getImage_source_oriname();
			petData.setImage_source_oriname(fs_url + base_url);
		}
		
		Gson gson = new Gson();
		String petDetail = gson.toJson(petData);

		System.out.println("petDetail : " + petDetail);

		return petDetail;
	}

	
	@PostMapping(value="/ajaxInsertPetInfo")
	@ResponseBody //json으로 변환해서 보내줌!-@RequestBody : 받은 거 json으로 바꿔줌
	public int ajaxInsertPetInfo(Pet pet, @RequestParam(value="file", required = false) MultipartFile file, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println("> 반려동물 정보 입력");
		System.out.println("pet~~:"+ pet);
		member_serial = 1;
		pet.setMember_serial(member_serial);
		System.out.println(file);
		
		int result = 0;
		if(!file.isEmpty()) { //첨부한 파일이 있을 때
			System.out.println("insert 사진있음~");
			String foldername = "petImg";
			//int thumb_w = 200;
			//int thumb_h = 200;
			
			String originalFileName = file.getOriginalFilename();
			System.out.println("originalFileName : " + originalFileName);
			String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
			String savedFileName = UUID.randomUUID() + extension;
			
			File uploadfile = new File(originalFileName);
			String imgName = mc.s3upload(uploadfile, savedFileName, foldername);
			
			String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
			
			pet.setImage_source_oriname(foldername + "/" + imgName);
			pet.setImage_source(foldername + "/" + imgName);
			
			System.out.println(fs_url + foldername + "/" + savedFileName);
			System.out.println("입력할 pet : " + pet);
			
			result = petService.insertPetInfo(pet);	
		
		} else { //첨부한 파일이 없을 때
			System.out.println("insert 사진없음!");
			result = petService.insertPetInfo(pet);	
		}
		return result;
	}
	
	//ajax이용
		@PostMapping("/ajaxUpdatePetInfo")
		@ResponseBody
		public int ajaxUpdatePetInfo(Pet pet, @RequestParam(value="file", required = false) MultipartFile file, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println("> 반려동물 정보 입력");
		System.out.println("pet~~:"+ pet);
		member_serial = 1;
		pet.setMember_serial(member_serial);
		System.out.println("서엉고옹~");
		System.out.println(file);
		
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
			String imgName = mc.s3upload(uploadfile, savedFileName, foldername);
			
			String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
			
			pet.setImage_source_oriname(foldername + "/" + imgName);
			pet.setImage_source(foldername + "/" + imgName);
			
			System.out.println(fs_url + foldername + "/" + savedFileName);
			System.out.println("입력할 pet : " + pet);
			result = petService.updatePetInfo(pet);	
		
		} else { //첨부한 파일이 없을 때
//			result = petService.updatePetInfo2(pet);	
			System.out.println("update 사진없음!!!");
			result = 0;
		}
		return result;
	}

	class Example {
		public String field1;
		public NestedObject nestedObect;
	}

	class NestedObject {
		public String field2;
	}
	class ExampleMapper {
		@Select("select 'field1' as field1, 'field2' as nestedObjectField")
		Example map();
	}
	@Select("select field1 from ExampleEntity")
	@Results(id = "selectMap", value = { @Result(property = "field1", column = "FIELD1", jdbcType = JdbcType.VARCHAR),
			@Result(property = "nestedObject", javaType = NestedObject.class, column = "ID_NESTEDOBJECT", one = @One(select = "getNestedObjectById")) })
	Example map();

	@Select("select field2 from NestedObjectEntity where ID_NESTEDOBJECT=#{id}")
	@Results(id = "nestedObjectMap", value = {
			@Result(property = "field2", column = "FIELD2", jdbcType = JdbcType.VARCHAR) })
	NestedObject getNestedObjectById(@Param("id") Long id);

	
	class Book {
	    private String bookName;
	    public Book(String bookName){
	        this.bookName = bookName;
	    }
	    public String getBookName(){
	        return bookName;
	    }
	}


	class Student {
	    private String studentName;
	    private Book book;
	    public Student(){}
	}
	@Select("Select studentName, book from Students")
	@ConstructorArgs(value = { 
	@Arg(column = "studentName", javaType=java.lang.String.class),
	@Arg(column = "book", javaType = java.lang.String.class)
	})
	
//	@PostMapping(value="/ajaxInsertPetInfo")
//	@ResponseBody //json으로 변환해서 보내줌!-@RequestBody : 받은 거 json으로 바꿔줌
//	public int ajaxInsertPetInfo(Pet pet, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
//		System.out.println("> 반려동물 정보 입력");
//		System.out.println("pet~~:"+ pet);
//		
//		pet.setMember_serial(member_serial);
//
//		int result = 0;
//		if(pet.getImage_source() != null) {
//			String foldername = "petImg";
//			MultipartFile pfile = pet.getImage_source(); //저장하려는 파일
//			File file = multipartToFile(pfile);
//			
//			String originalFileName = pfile.getOriginalFilename();
//			String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
//			String savedFileName = UUID.randomUUID() + extension;
//			
//			System.out.println(file);
//			
//			String imgName = mc.s3upload(file, savedFileName, foldername);
//			System.out.println(imgName);
//			String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
//			
//			pet.setImage_source_oriname(foldername + "/" + imgName);
//			
//			System.out.println(fs_url + foldername + "/" + imgName);
//			
//			result = petService.insertPetInfo(pet);	
//			
//		} else if(pet.getImage_source() == null) {
//			result = petService.insertPetInfo(pet);
//		}
//		
//		return result;
//	}

	//ajax이용
//	@PostMapping("/ajaxUpdatePetInfo")
//	@ResponseBody
//	public int ajaxUpdatePetInfo(Pet pet, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
//		System.out.println("> 반려동물 정보 수정");
//		System.out.println("pet~~:"+ pet);
//		
//		pet.setMember_serial(member_serial);
//
//		int result = 0;
//		if(pet.getImage_source() != null) {
//			String foldername = "petImg";
//			MultipartFile pfile = pet.getImage_source(); //저장하려는 파일
//			File file = multipartToFile(pfile);
//			
//			String originalFileName = pfile.getOriginalFilename();
//			String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
//			String savedFileName = UUID.randomUUID() + extension;
//			
//			System.out.println(file);
//			
//			String imgName = mc.s3upload(file, savedFileName, foldername);
//			System.out.println(imgName);
//			String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";
//			
//			pet.setImage_source_oriname(foldername + "/" + imgName);
//			
//			System.out.println(fs_url + foldername + "/" + imgName);
//			
//			result = petService.updatePetInfo(pet);	
//			
//		} else if(pet.getImage_source() == null) {
//			result = petService.updatePetInfo(pet);
//		}
//		return result;
//	}

	//ajax이용
	@PostMapping(value="/ajaxDeletePetInfo")
	@ResponseBody
	public int ajaxDeletePetInfo(Pet pet) {
		System.out.println("ajax 반려동물 정보 삭제 실행!!");
		System.out.println("pet :"+pet);
		member_serial = 1;
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
