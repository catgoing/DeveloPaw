package ga.bowwow.controller.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amazonaws.AmazonClientException;

import ga.bowwow.controller.common.MultipartController;
import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.BoardService;
import ga.bowwow.service.board.Comment;
import ga.bowwow.service.board.Report;


@Controller
public class BoardController {
	@Autowired //의존주입(DI) : 동일한 데이터 타입 객체
	private BoardService boardService; //의존주입<-- BoardServiceImpl
	private HttpServletRequest HttpServletRequest;
		

	public BoardController() {
		System.out.println("---->>> BoardController() 객체생성");
		System.out.println("> boardService : " + boardService); //null
	}

	@RequestMapping("/community/insertBoard")
	public String insertBoard(Board vo, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println(">>> 게시글 입력 - insertBoard()");
		System.out.println("vo : " + vo);
		System.out.println("img : ---" + vo.getImg_locas() + "---");
		
		
		//이미지 경로를 저장할 배열 생성
		if(vo.getImg_locas() == null || vo.getImg_locas() == "") {
			
			boardService.insertBoard(vo);
		} else {
			
			String[] imgs_loca = new String[10];
			
			//이미지 경로 , 단위로 잘라 배열에 저장
			imgs_loca = vo.getImg_locas().split(",");
			
			//배열값 확인
	//		System.out.println(Arrays.toString(imgs_loca));
			
			//폴더 이름 설정
			String foldername = "diary";
			
			//이미지 배열 길이(이미지 개수) 만큼 MultipartController 객체 생성, S3에 업로드 
			for (int i = 0; i < imgs_loca.length; i++) {
	//			MultipartController mc = new MultipartController();
				//업로드할 이미지 경로, 폴더이름, 리퀘스트 전달(MultipartController에서 contextroot 획득을 위함)
				mc.registerImage(imgs_loca[i], foldername, request);
			}
			
			//DB에 저장되는 데이터 내부서버경로 -> S3서버 경로로 변환 작업(본문 이미지)
			//나중에 출력할 때에는 S3에 업로드 된 파일을 불러와야 하기 때문
			String original_loca = "src=\"/resources/upload";
			String s3_loca = "src=\"https://projectbit.s3.us-east-2.amazonaws.com/" + foldername;
			String reLoca = vo.getBoard_content().replace(original_loca, s3_loca);
			vo.setBoard_content(reLoca);
			
			//DB에 저장되는 데이터 내부서버경로 -> DB에 저장할 경로로 변경(폴더명/파일명), (썸네일)
			String original_thum_loca = "/resources/upload";
			String thumReLoca = vo.getImg1().replace(original_thum_loca, "" + foldername);
			vo.setImg1(thumReLoca);
			
			//경로 변환 후 최종 DB에 저장되는 VO값 콘솔에 출력
			System.out.println("reLoca vo : " + vo);
			
			boardService.insertBoard(vo);
		}
		
		return "/community/diary_board";
	}
	
	
	@RequestMapping("/community/diary_board")
	public String getBoardList(Model model) {
		System.out.println(">>> 게시글 전체 목록- String getBoardList()");
		System.out.println("> boardService : " + boardService);
		int board_idx = 1;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("board_idx", board_idx);

		List<Board> boardList = boardService.getBoardList(map);

		model.addAttribute("boardList", boardList);
		model.addAttribute("board_idx", board_idx);
			
		System.out.println("bowwow list : " + boardList);
		System.out.println("board model : " + model);

		return "/community/diary_board";

	}
	
	
	@RequestMapping(value="/community/detail", method=RequestMethod.GET)
	
	public String getBoard(@RequestParam("board_idx") int board_idx,
				@RequestParam("board_no") int board_no ,  Model model) {
		
		System.out.println(">>> 글상세 - String getBoard()");
		Board board = new Board();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("board_idx", board_idx);
		map.put("board_no", board_no );
		System.out.println(board);
		board = boardService.getBoard(map);
		List<Comment> commentList = boardService.getCommentList(map);
		List<Comment> comment2List = boardService.getComment2List(map);
		
		System.out.println("commentList : " + commentList);
		System.out.println("comment2List : " + comment2List);
		
		//TODO 임시 회원 시리얼을 실제 객체로 교체할 것
		model.addAttribute("tempMemberSerial", "1");
		
		model.addAttribute("vo", board);
		model.addAttribute("commentList", commentList);
		model.addAttribute("comment2List", comment2List);

		return "/community/detail_board";

	}
	
	
	
	@RequestMapping("/community/updateBoard")
	public String updateBoard(Board vo, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println(">>> 게시글 수정 - updateBoard()");
		System.out.println("vo : " + vo);
		
		
		//이미지 경로를 저장할 배열 생성
		String[] imgs_loca = new String[10];
		
		//이미지 경로 , 단위로 잘라 배열에 저장
		imgs_loca = vo.getImg_locas().split(",");
		
		//배열값 확인
//		System.out.println(Arrays.toString(imgs_loca));
		
		//폴더 이름 설정
		String foldername = "diary";
		
		//이미지 배열 길이(이미지 개수) 만큼 MultipartController 객체 생성, S3에 업로드 
		for (int i = 0; i < imgs_loca.length; i++) {
//			MultipartController mc = new MultipartController();
			//업로드할 이미지 경로, 폴더이름, 리퀘스트 전달(MultipartController에서 contextroot 획득을 위함)
			mc.registerImage(imgs_loca[i], foldername, request);
		}
		
		//DB에 저장되는 데이터 내부서버경로 -> S3서버 경로로 변환 작업(본문 이미지)
		//나중에 출력할 때에는 S3에 업로드 된 파일을 불러와야 하기 때문
		String original_loca = "src=\"/resources/upload";
		String s3_loca = "src=\"https://projectbit.s3.us-east-2.amazonaws.com/" + foldername;
		String reLoca = vo.getBoard_content().replace(original_loca, s3_loca);
		vo.setBoard_content(reLoca);
		
		//DB에 저장되는 데이터 내부서버경로 -> DB에 저장할 경로로 변경(폴더명/파일명), (썸네일)
		String original_thum_loca = "/resources/upload";
		String thumReLoca = vo.getImg1().replace(original_thum_loca, "" + foldername);
		vo.setImg1(thumReLoca);
		
		//경로 변환 후 최종 DB에 저장되는 VO값 콘솔에 출력
		System.out.println("reLoca vo : " + vo);
		
//		boardService.updateBoard(vo);
		
		return "/community/detail_board";
	}
	

	//메소드에 선언된 @ModelAttribute : 리턴된 데이터를 View에 전달
	//@ModelAttribute 선언된 메소드는 @RequestMapping 메소드보다 먼저 실행됨
	//뷰에 전달될 때 설정된 명칭(예: conditionMap)으로 전달
	@RequestMapping("/community/search")
	public String search(Board board, Model model) {
		String keyword = board.getKeyword();
		System.out.println(">> 통합검색 - String search()");
		System.out.println(board);
		System.out.println("search vo:"+board.getKeyword());
		List<Board> diarylist =boardService.search("1", keyword);
		List<Board> introlist =boardService.search("2", keyword);
		List<Board> knowhowlist =boardService.search("3", keyword);
		System.out.println("searchboard:" + diarylist);
		System.out.println("searchboard:" + introlist);
		System.out.println("searchboard:" + knowhowlist);
		model.addAttribute("diarylist",diarylist);
		model.addAttribute("introlist",introlist);
		model.addAttribute("knowhowlist",knowhowlist);
		
	
		return "/community/search";
	}

	
	@RequestMapping("/community/insertComment")
	public String insertComment(Comment vo) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {
		System.out.println(">>> 댓글 입력 - insertComment()");
		System.out.println("vo : " + vo);
		
		
		boardService.insertComment(vo);
		
		return "/community/insert_complete";

	}
	
	@RequestMapping("/report1")
	public String insertReport(Report vo) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {
		System.out.println(">>> 댓글 입력 - insertreport");
		System.out.println("vo : " + vo);
		
		
		boardService.insertReport(vo);
		
		return "/report1";

	}
	
	
	@RequestMapping("/community/insertComment2")
	public String insertComment2(Comment vo) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {
		System.out.println(">>> 댓글 입력 - insertComment()");
		System.out.println("vo : " + vo);
		
		
		boardService.insertComment2(vo);
		
		return "/community/insert_complete";
		
	}
	

	/*
	@RequestMapping("updateBoard")
	public String updateBoard(Board vo) {
		System.out.println(">>> 글수정 - updateBoard()");
		boardService.updateBoard(vo);

		return "getBoardList";
	}	

	@RequestMapping("deleteBoard")
	public String deleteBoard(Board vo) {
		System.out.println(">>> 글수정 - deleteBoard()");
		boardService.deleteBoard(vo);
		S
		return "getBoardList";
	}	

	//Ajax 요청을 받고 JSON 배열 데이터 리턴
	@RequestMapping("ajaxGetBoardList")
	@ResponseBody
	public List<Board> ajaxGetBoardList(Board vo) {
		List<Board> boardList = boardService.getBoardList(vo);
		System.out.println("boardList : " + boardList);

		return boardList;
	}
	 */

}


