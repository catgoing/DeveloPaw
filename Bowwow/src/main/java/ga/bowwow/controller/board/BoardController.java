package ga.bowwow.controller.board;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonClientException;

import ga.bowwow.controller.common.MultipartController;
import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.BoardService;
import ga.bowwow.service.board.Comment;
import ga.bowwow.service.board.CommentService;
import ga.bowwow.service.common.ImageVO;


@Controller
public class BoardController {
	@Autowired //의존주입(DI) : 동일한 데이터 타입 객체
	private BoardService boardService; //의존주입<-- BoardServiceImpl
//	 private CommentService commentService; 
		

	public BoardController() {
		System.out.println("---->>> BoardController() 객체생성");
		System.out.println("> boardService : " + boardService); //null
	}

	@RequestMapping("/community/list")
	public String getBoardList(Model model) {
		System.out.println(">>> 게시글 전체 목록- String getBoardList()");
		System.out.println("> boardService : " + boardService);

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("board_idx", 1);
		map.put("board_no", 72);

		List<Board> boardList = boardService.getBoardList(map);

		model.addAttribute("boardList", boardList);
			
		System.out.println("bowwow list : " + boardList);
		System.out.println("board model : " + model);

		return "/community/diary_board";

	}
	
	
	@RequestMapping("/community/detail")
	public String getBoard(Model model) {
		
		System.out.println(">>> 글상세 - String getBoard()");
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("board_idx", 1);
		map.put("board_no", 24);
		
		Board board = boardService.getBoard(map);
		List<Comment> commentList = boardService.getCommentList(map);
		List<Comment> comment2List = boardService.getComment2List(map);
		
		System.out.println("commentList : " + commentList);
		System.out.println("comment2List : " + comment2List);
		
		model.addAttribute("vo", board);
		model.addAttribute("commentList", commentList);
		model.addAttribute("comment2List", comment2List);

		return "/community/detail_board";
		
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


	@RequestMapping("/community/insertBoard")
	public String insertBoard(Board vo, ImageVO ivo, MultipartFile multipartFile, Model model, HttpServletRequest request) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {
		System.out.println(">>> 게시글 입력 - insertBoard()");
		System.out.println("vo : " + vo);
//		System.out.println("ivo : " + ivo);
//		  MultipartController mc = new MultipartController();
//		  mc.registerImage(multipartFile, model, request, "diary");
		
//		new MultipartController().registerImage(multipartFile, model, request, "diary");
		
//		System.out.println("multi: " + multipartFile);
//		System.out.println("model: " + model);
//		System.out.println("req : " + request);
		
//		new MultipartController().registerImage(multipartFile, model, request, "diary");
		
//		boardService.insertBoard(vo);

		return "/community/list";

	}
	
	@RequestMapping("/community/registerImage")
	public String registerImage(MultipartFile multipartFile, Model model, HttpServletRequest request) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {

		new MultipartController().registerImage(multipartFile, model, request, "diary");

		return "/community/list";
	}
	
	
	@RequestMapping("/community/insertComment")
	public String insertComment(Comment vo) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {
		System.out.println(">>> 댓글 입력 - insertComment()");
		System.out.println("vo : " + vo);
		
		
		boardService.insertComment(vo);
		
		return "/community/insert_complete";

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


