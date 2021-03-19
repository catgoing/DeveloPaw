package com.deveopaw.bowwow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.deveopaw.bowwow.image.ImageService;
import com.deveopaw.bowwow.image.ImageVO;

@Controller
public class ImageController {
	//(실습)ImageService 타입 주입받아서 사용 형태로 변경
	@Autowired
	private ImageService imageService;
	
	public ImageController() {
		System.out.println("---->>> ImageController() 생성");
	}
	
	/* @ModelAttribute : 모델(Model) 속성값으로 저장(속성명 별도 지정)
	 * 	별도 지정 명칭 부여 안하면 <데이터 타입>의 첫글자 소문자로 작성된 명칭 사용
	 * @ModelAttribute ImageVO --> 속성명 ImageVO 형태
	 * @ModelAttribute("Image") ImageVO ---> 속성명 Image 사용
	 * Command 객체가 기본 request 스코프에 저장 사용됨
	 */
	@PostMapping(value = "/insertImage.do")
	public String insertImage(ImageVO vo) {
		imageService.insertImage(vo);
		
		return "index.jsp";
	}
}