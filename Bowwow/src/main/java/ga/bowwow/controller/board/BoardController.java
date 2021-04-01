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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonClientException;

import ga.bowwow.controller.common.MultipartController;
import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.BoardService;
import ga.bowwow.service.board.Comment;
import ga.bowwow.service.board.CommentService;
import ga.bowwow.service.board.Report;
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
		model.addAttribute("tempMemberSerial", "997");
		model.addAttribute("board_no", board_no);
		model.addAttribute("board_idx", board_idx);
		model.addAttribute("board", board);
		model.addAttribute("commentList", commentList);
		model.addAttribute("comment2List", comment2List);

		return "/community/detail_board";

	}
	
	
	//댓글 입력
	@RequestMapping(value="/community/comment", method=RequestMethod.GET)
	public String reply(Comment comment, @RequestParam("board_no") int board_no ,
						@RequestParam("accused_serial") String member_serial, Model model) {
	String comment_content = comment.getComment_content();
	System.out.println(">>> 댓글 - reply()");
	System.out.println("댓글내용:" + comment_content);
	comment.setComment_content(comment_content);
	comment.setBoard_no(Integer.toString(board_no));
	comment.setMember_serial(member_serial);
	System.out.println(comment);
	boardService.insertComment(comment);
	
	
	
	
	/*
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("member_serial", Integer.parseInt(member_serial));
	map.put("comment_content", comment_content);
	map.put("board_no", board_no);
	
	
	
	System.out.println(map);
	List<Comment> commentList = boardService.getCommentList(map);
	List<Comment> comment2List = boardService.getComment2List(map);
	
	System.out.println("commentList : " + commentList);
	System.out.println("comment2List : " + comment2List);
	
	//TODO 임시 회원 시리얼을 실제 객체로 교체할 것
	model.addAttribute("tempMemberSerial", "1");
	model.addAttribute("board_no", board_no);
	model.addAttribute("vo", comment);
	model.addAttribute("commentList", commentList);
	model.addAttribute("comment2List", comment2List);
	*/

	return "/community/detail_board";

}
	
	
	//게시글 삭제
	@RequestMapping(value="/community/boardDelete", method=RequestMethod.GET)
	public String boardDelete(Comment comment, @RequestParam("board_no") int board_no ,
						@RequestParam("board_idx") String board_idx, Model model) {
	System.out.println(">>> 게시글 삭제 - boardDelete()");
	System.out.println(board_no +  " / " +board_idx);
	String comment_content = comment.getComment_content();
	System.out.println("댓글내용:" + comment_content);
	comment.setComment_content(comment_content);
	
	
	
	boardService.insertComment(comment);
	return "/community/detail_board";
	}

	//메소드에 선언된 @ModelAttribute : 리턴된 데이터를 View에 전달
	//@ModelAttribute 선언된 메소드는 @RequestMapping 메소드보다 먼저 실행됨
	//뷰에 전달될 때 설정된 명칭(예: conditionMap)으로 전달
	@RequestMapping("/community/search")
	public String search(Board board ,Model model) {
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


