package ga.bowwow.controller.store;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.store.Review;
import ga.bowwow.service.store.StoreService;


@Controller
public class StoreController {
	@Autowired //의존주입(DI) : 동일한 데이터 타입 객체
	private StoreService storeService; //의존주입<-- BoardServiceImpl
	
	public StoreController() {
		System.out.println("---->>> storeService() 객체생성");
		System.out.println("> storeService : " + storeService); //null
	}

	@RequestMapping("/store/insertProductReview.do")
	public String insertProductReview(Review review) throws IllegalStateException, IOException {
		System.out.println(">>> 리뷰 입력 - insertProductReview()");
		System.out.println("review : " + review);
		
		/* 파일업로드 관련 처리
		 * MultipartFile 인터페이스 주요 메소드
		 * String getOriginalFilename() : 업로드할 파일명 찾기
		 * void transferTo(File) : 업로드할 파일을 업로드 처리
		 * boolean isEmpty() : 업로드할 파일의 존재여부(없으면 true)
		 */
	/*	MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) { //파일이 있으면
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File("c:/MyStudy/temp/" + fileName ));
		}*/
		
		storeService.insertProductReview(review);
		return "getProductReviewList.do";
	}		
	
}


