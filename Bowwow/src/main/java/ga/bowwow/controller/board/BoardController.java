package ga.bowwow.controller.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.BoardService;


@Controller
public class BoardController {
	@Autowired //의존주입(DI) : 동일한 데이터 타입 객체
	private BoardService boardService; //의존주입<-- BoardServiceImpl

	public BoardController() {
		System.out.println("---->>> BoardController() 객체생성");
		System.out.println("> boardService : " + boardService); //null
	}

/*
	@RequestMapping(value="/uploadSummernoteImageFile.do", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request ) throws AmazonClientException, InterruptedException, IllegalStateException, IOException  {
		JsonObject jsonObject = new JsonObject();
		
        /*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 
		
		// 내부경로로 저장
		/*
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/upload/";
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명

		
		File targetFile = new File(fileRoot + savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/main/resources/upload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		System.out.println("파일 주소: " + a);
		
		
		
		
		
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/diary/";
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		MultipartController s2 = new MultipartController();
	    File file = new File(request.getServletContext().getRealPath("/temp"));
	    multipartFile.transferTo(file);
		String s3 = s2.s3upload(file, savedFileName,"diary");
		
		System.out.println(s3);
		
		jsonObject.addProperty("url", fs_url + savedFileName); // contextroot + resources + 저장할 내부 폴더명
		jsonObject.addProperty("responseCode", "success");
		
		String a = jsonObject.toString();
		
		
		return a;
	}
	
*/


	@RequestMapping("/list.do")
	public String getBoardList(Model model) {
		System.out.println(">>> 게시글 전체 목록- String getBoardList()");
		System.out.println("> boardService : " + boardService);


		int board_idx = 1;

		List<Board> boardList = boardService.getBoardList(board_idx);
		System.out.println("bowwow list : " + boardList);

		model.addAttribute("boardList", boardList);
		System.out.println("board model : " + model);




		//		return "/godiary";
		//		return "redirect:/tiles/godiary.do";
		return "/community/diary_board";
	}	
	@RequestMapping("/community/list.do")
	public String getTilesBoardList(Model model) {
		System.out.println(">>> 게시글 전체 목록- String getBoardList()");
		System.out.println("> boardService : " + boardService);


		int board_idx = 1;

		List<Board> boardList = boardService.getBoardList(board_idx);
		System.out.println("bowwow list : " + boardList);

		model.addAttribute("boardList", boardList);
		System.out.println("board model : " + model);




		//		return "/godiary";
		//		return "redirect:/tiles/godiary.do";
		return "/godiary";
	}	

	//메소드에 선언된 @ModelAttribute : 리턴된 데이터를 View에 전달
	//@ModelAttribute 선언된 메소드는 @RequestMapping 메소드보다 먼저 실행됨
	//뷰에 전달될 때 설정된 명칭(예: conditionMap)으로 전달
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		System.out.println("--->>@ModelAttribute - Map searchConditionMap()");
		//key : 제목, value : TITLE
		//key : 내용, value : CONTENT
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		return conditionMap;
	}

	/*
	//리턴타입 ModelAndView -> String
	//전달하는 데이터 타입 ModelAndView -> Model
	@RequestMapping("/getBoard.do")
	public String getBoard(Board vo, Model model) {
		System.out.println(">>> 글상세 - String getBoard()");
		Board board = boardService.getBoard(vo);
		model.addAttribute("board", board);

		return "getBoard.jsp";
	}	
	 */



	//	@RequestMapping("/getBoardList.do")
	//	public String getBoardList(Board vo, Model model) {
	//		System.out.println(">>> 게시글 전체 목록- String getBoardList()");
	//		System.out.println("> boardService : " + boardService);
	//
	//				
	//		List<Board> boardList = boardService.getBoardList(1);
	//		
	//		model.addAttribute("boardList", boardList);
	//		
	//		return "getBoardList.jsp";
	//	}	


	@RequestMapping("/community/insertBoard.do")
	public String insertBoard(Board vo) throws IllegalStateException, IOException {
		System.out.println(">>> 게시글 입력 - insertBoard()");
		System.out.println("vo : " + vo);

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

		
//		boardService.insertBoard(vo);
//		return "getBoardList.do";
		return "list.do";
	}	

	/*
	@RequestMapping("/updateBoard.do")
	public String updateBoard(Board vo) {
		System.out.println(">>> 글수정 - updateBoard()");
		boardService.updateBoard(vo);

		return "getBoardList.do";
	}	

	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(Board vo) {
		System.out.println(">>> 글수정 - deleteBoard()");
		boardService.deleteBoard(vo);
		S
		return "getBoardList.do";
	}	

	//Ajax 요청을 받고 JSON 배열 데이터 리턴
	@RequestMapping("/ajaxGetBoardList.do")
	@ResponseBody
	public List<Board> ajaxGetBoardList(Board vo) {
		List<Board> boardList = boardService.getBoardList(vo);
		System.out.println("boardList : " + boardList);

		return boardList;
	}
	 */

}


