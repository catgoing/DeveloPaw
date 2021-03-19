package com.deveopaw.bowwow;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.deveopaw.bowwow.image.ImageService;
import com.deveopaw.bowwow.image.ImageVO;

@Controller
public class MultipartController {

	@Autowired
	private ImageService imageService;
	
	@PostMapping("registerImage.do")
	public String registerImage(ImageVO vo, Model model) throws IllegalStateException, IOException {
		
		/* 파일업로드 관련 처리
		 * MultipartFile 인터페이스 주요 메소드
		 * String getOriginalFilename() : 업로드할 파일명 찾기
		 * void transferTo(File) : 업로드할 파일을 업로드 처리
		 * boolean isEmpty() : 업로드할 파일의 존재여부(없으면 true)
		 */

		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) { //파일이 있으면
			File transferAddress = generateFileAddress(uploadFile.getOriginalFilename());
			
			System.out.println("local Image Address : "
									+ transferAddress.getAbsolutePath());
			vo.setImageSource(transferAddress.getAbsolutePath());
			
			uploadFile.transferTo(transferAddress);
		}

		//TODO imageService를 이곳에서 부르는 것이 아니라, ImageController가 가진 imageService에게, imageSource가 저장된 vo객체를 넘기기.
		imageService.insertImage(vo);
		
		return "index.jsp";
	}
	
	//차후에 소스의 저장주소(예로는 아래의 c:/MyStudy/temp/)를 동적으로 관리할 수 있는가? -> 관련 객체를 만들어서 관리?
	private File generateFileAddress(String fileName) {
		return new File("c:/MyStudy/temp/" + fileName);
	}
}
