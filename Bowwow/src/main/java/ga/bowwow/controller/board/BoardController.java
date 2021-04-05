package ga.bowwow.controller.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	@Autowired 
	private HttpSession session;
	private HttpServletRequest HttpServletRequest;


	public BoardController() {
		System.out.println("---->>> BoardController() 객체생성");
		System.out.println("> boardService : " + boardService); //null
	}
	
	
	//게시글 입력
	@RequestMapping("/community/insertBoard")
	public String insertBoard(Board vo, HttpServletRequest request, MultipartController mc) throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println(">>> 게시글 입력 - insertBoard()");
		System.out.println("vo : " + vo);
		System.out.println("img : ---" + vo.getImg_locas() + "---");



		if(vo.getImg_locas() == null || vo.getImg_locas().length() == 0) {
			//이미지 첨부된 거 없으면 바로 db에 저장
			boardService.insertBoard(vo);

		} else { //이미지가 있으면
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

			//DB에 저장되는 데이터 내부서버경ert fixing로 -> DB에 저장할 경로로 변경(폴더명/파일명), (썸네일)
			String original_thum_loca = "/resources/upload";
			String thumReLoca = vo.getImg1().replace(original_thum_loca, "" + foldername);
			vo.setImg1(thumReLoca);

			//경로 변환 후 최종 DB에 저장되는 VO값 콘솔에 출력
			System.out.println("reLoca vo : " + vo);

			boardService.insertBoard(vo);
		}

		//		return "redirect:/community/board_idx";
		return "redirect:/community/diary_board";
	}
	
	
	//펫 다이어리(list)
	@RequestMapping(value="/community/diary_board",method=RequestMethod.GET)
	public String getdiary_BoardList(Model model,@RequestParam("board_idx") int board_idx,
			HttpSession session) {
		System.out.println(">>> 게시글 전체 목록- String getdiary_BoardList()");
		System.out.println("> boardService : " + boardService);
		System.out.println("board_idx : " + board_idx);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("board_idx", board_idx);
		System.out.println("diary_board map : " + map);
		List<Board> boardList = boardService.getBoardList(map);
		
		System.out.println("diary_board boardList input(map) : " + board_idx);
		session.setAttribute("board_idx", board_idx);
		model.addAttribute("boardList", boardList);
		model.addAttribute("board_idx", board_idx);

		System.out.println("bowwow list : " + boardList);
		System.out.println("board model : " + model);

		return "/community/diary_board";

	}
	
	
	//펫 소개(list)
	@RequestMapping(value="/community/intro_board",method=RequestMethod.GET)
	public String getintro_BoardList(Model model,@RequestParam("board_idx") int board_idx,
			HttpSession session) {
		System.out.println(">>> 게시글 전체 목록- String getintro_BoardList()");
		System.out.println("> boardService : " + boardService);
		System.out.println("board_idx : " + board_idx);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("board_idx", board_idx);
		System.out.println("intro_board map : " + map);
		List<Board> boardList = boardService.getBoardList(map);
		
		System.out.println("intro_board boardList input(map) : " + board_idx);
		session.setAttribute("board_idx", board_idx);
		model.addAttribute("boardList", boardList);
		model.addAttribute("board_idx", board_idx);

		System.out.println("bowwow list : " + boardList);
		System.out.println("board model : " + model);

		return "/community/intro_board";
	}
	
	//펫 노하우(list)
		@RequestMapping(value="/community/knowhow_board",method=RequestMethod.GET)
		public String knowhow_BoardList(Model model,@RequestParam("board_idx") int board_idx,
				HttpSession session) {
			System.out.println(">>> 게시글 전체 목록- String getknowhow_BoardList()");
			System.out.println("> boardService : " + boardService);
			System.out.println("board_idx : " + board_idx);
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("board_idx", board_idx);
			System.out.println("knowhow_board map : " + map);
			List<Board> boardList = boardService.getBoardList(map);
			
			System.out.println("knowhow_board boardList input(map) : " + board_idx);
			session.setAttribute("board_idx", board_idx);
			model.addAttribute("boardList", boardList);
			model.addAttribute("board_idx", board_idx);

			System.out.println("bowwow list : " + boardList);
			System.out.println("board model : " + model);

			return "/community/knowhow_board";

		}
		
		
		//잃어버린 반려동물 찾기(list)
		@RequestMapping(value="/community/missing_board",method=RequestMethod.GET)
		public String missing_BoardList(Model model,@RequestParam("board_idx") int board_idx,
				HttpSession session) {
			System.out.println(">>> 게시글 전체 목록- String getmissing_BoardList()");
			System.out.println("> boardService : " + boardService);
			System.out.println("board_idx : " + board_idx);
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("board_idx", board_idx);
			System.out.println("missing_board map : " + map);
			List<Board> boardList = boardService.getBoardList(map);
			
			System.out.println("missing_board boardList input(map) : " + board_idx);
			session.setAttribute("board_idx", board_idx);
			model.addAttribute("boardList", boardList);
			model.addAttribute("board_idx", board_idx);

			System.out.println("bowwow list : " + boardList);
			System.out.println("board model : " + model);

			return "/community/missing_board";

		}
		
		
		//펫 중고장터(list)
		@RequestMapping(value="/community/used_transaction_board",method=RequestMethod.GET)
		public String used_transaction_board(Model model,@RequestParam("board_idx") int board_idx,
				HttpSession session) {
			System.out.println(">>> 게시글 전체 목록- String getmissing_BoardList()");
			System.out.println("> boardService : " + boardService);
			System.out.println("board_idx : " + board_idx);
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("board_idx", board_idx);
			System.out.println("used_transaction_boardList map : " + map);
			List<Board> boardList = boardService.getBoardList(map);
			
			System.out.println("used_transaction_boardList input(map) : " + board_idx);
			session.setAttribute("board_idx", board_idx);
			model.addAttribute("boardList", boardList);
			model.addAttribute("board_idx", board_idx);

			System.out.println("bowwow list : " + boardList);
			System.out.println("board model : " + model);

			return "/community/used_transaction_board";

		}
	
	
	


	
		
	//상세페이지
	@RequestMapping(value="/community/detail", method=RequestMethod.GET)
	public String getBoard(@RequestParam("board_idx") int board_idx,
			@RequestParam("board_no") int board_no , Board vo, Model model) {
		
		System.out.println("board_idx : "  + board_idx);
		System.out.println(">>> 글상세 - String getBoard()");
		Map<String, Integer> map = new HashMap<String, Integer>();
		System.out.println("board_idx" + board_idx);
		map.put("board_idx", board_idx);
		map.put("board_no", board_no );
		vo = boardService.getBoard(map);

		List<Comment> commentList = boardService.getCommentList(map);
		List<Comment> comment2List = boardService.getComment2List(map);
		
		System.out.println("detail vo : " + vo);

		System.out.println("commentList : " + commentList);
		System.out.println("comment2List : " + comment2List);

		//TODO 임시 회원 시리얼을 실제 객체로 교체할 것
		model.addAttribute("board_no", board_no);
		model.addAttribute("board_idx",board_idx);
		model.addAttribute("vo", vo);
		model.addAttribute("commentList", commentList);
		model.addAttribute("comment2List", comment2List);

		return "/community/detail_board";

	}


	//댓글 입력
	@RequestMapping(value="/community/comment", method=RequestMethod.GET)
	public String reply(Comment comment, @RequestParam("board_idx") int board_idx ,
				@RequestParam("board_no") int board_no ,
						 Model model, HttpSession session) {
	String comment_content = comment.getComment_content();
	
	System.out.println(">>> 댓글 - reply()");
	System.out.println("댓글내용:" + comment_content);
	comment.setComment_content(comment_content);
	comment.setBoard_no(Integer.toString(board_no));
	System.out.println(comment);
	
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("board_idx", board_idx);
	map.put("comment",comment);
	boardService.insertComment(map);
	
		return "redirect:/community/detail?board_idx=" + session.getAttribute("board_idx") + "&board_no=" + board_no;
	}
	
	//대댓글 입력
		@RequestMapping(value="/community/comment2", method=RequestMethod.GET)
		public String reply2(Comment comment, @RequestParam("board_no") int board_no ,
							 @RequestParam("board_idx") int board_idx, 
							 @RequestParam("comment_no") String comment_no,
							 Model model, HttpSession session) {
			
		String comment_content = comment.getComment_content(); //대댓글 내용
		
		System.out.println(">>> 댓글 - reply()");
		System.out.println("대댓글내용:" + comment_content);
		comment.setComment_content(comment_content);
		comment.setComment_no(comment_no);
		System.out.println(comment);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx", board_idx);
		map.put("comment",comment);
		boardService.insertComment2(map);
		

		return "redirect:/community/detail?board_idx=" + session.getAttribute("board_idx") + "&board_no=" + board_no;



		}





	//게시글 삭제
	@RequestMapping(value="/community/boardDelete", method=RequestMethod.GET)
	public String boardDelete(@RequestParam("board_no") int board_no ,
						@RequestParam("board_idx") String board_idx, Model model) {
		
		System.out.println(">>> 게시글 삭제 - boardDelete()");
		System.out.println(board_no +  " / " +board_idx);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx", board_idx);
		map.put("board_no", board_no);
		boardService.boardDelete(map);
		return "redirect:/community/diary_board";

		}
	
	//댓글 삭제
		@RequestMapping(value="/community/commentDelete", method=RequestMethod.GET)
		public String commentDelete(@RequestParam("comment_no") String comment_no, @RequestParam("board_no") int board_no ,
							@RequestParam("board_idx") String board_idx, Model model) {
		Comment comment=new Comment();
		comment.setComment_no(comment_no);
		comment.setBoard_no(Integer.toString(board_no));
		System.out.println("-------------comment-----------" + comment); 
		System.out.println(">>> 댓글삭제 - commentDelete()");
		System.out.println(board_no +  " / " +board_idx);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx", board_idx);
		map.put("comment", comment);
		boardService.commentDelete(map);
		return "redirect:/community/detail?board_idx=" + board_idx + "&board_no=" + board_no;
		}
		
		//대댓글 삭제
		@RequestMapping(value="/community/commentDelete2", method=RequestMethod.GET)
		public String commentDelete2(@RequestParam("comment_no") String comment_no, @RequestParam("board_no") int board_no ,
							@RequestParam("board_idx") String board_idx, Model model) {
		Comment comment=new Comment();
		comment.setComment_no(comment_no);
		//comment.setBoard_no(Integer.toString(board_no));
		System.out.println("-------------comment-----------" + comment); 
		System.out.println(">>> 댓글삭제 - commentDelete()");
		System.out.println(board_no +  " / " +board_idx);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx", board_idx);
		map.put("comment", comment);
		boardService.commentDelete2(map);
		return "redirect:/community/detail?board_idx=" + board_idx + "&board_no=" + board_no;
		}
	
	
	@RequestMapping("/community/update/board")
	public String updateBoard(Board vo, HttpServletRequest request, MultipartController mc, Model model) 
							throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println(">>> 게시글 수정화면 - updateBoard()");

		int board_idx = (int) session.getAttribute("board_idx");
		int board_no = vo.getBoard_no();

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("board_idx", board_idx);
		map.put("board_no", board_no);

		vo = boardService.getBoard(map);

		model.addAttribute("vo", vo);

		return "/community/update_board";
	}


	@RequestMapping("/community/do-update/board")
	public String doUpdateBoard(Board vo, HttpServletRequest request, MultipartController mc) 
						throws AmazonClientException, IllegalStateException, IOException, InterruptedException {
		System.out.println(">>> 게시글 수정 - do-updateBoard()");
		System.out.println("vo : " + vo);

		if(vo.getImg_locas() == null || vo.getImg_locas().length() == 0) {
			//이미지 첨부된 거 없으면 바로 db에 저장
			boardService.updateBoard(vo, session);

		} else {
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

			boardService.updateBoard(vo, session);
		}


		return "redirect:/community/detail?board_idx=" + session.getAttribute("board_idx")
										+ "&board_no=" + vo.getBoard_no() ;

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


	//	boardService.insertComment(vo);

		return "/community/insert_complete";

	}


	@RequestMapping("/community/insertComment2")
	public String insertComment2(Comment vo) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {
		System.out.println(">>> 댓글 입력 - insertComment()");
		System.out.println("vo : " + vo);


		boardService.insertComment2(vo);
		return null;
	}
	
	
	@RequestMapping("/community/reportList")
	public String getReportList(@RequestParam("report_idx") String idx, Model model) {
		
		System.out.println(">>> 신고 전체 목록- String getBoardReportList()");
//		System.out.println("> boardService : " + boardService);
		System.out.println(idx);
		session.setAttribute("report_idx", idx);
		String r_idx = session.getAttribute("report_idx").toString();
		int report_idx = Integer.parseInt(r_idx);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("report_idx", report_idx);

		List<Report> reportList = boardService.getReportList(report_idx);

		model.addAttribute("reportList", reportList);

		System.out.println("report list : " + reportList);

//		if(report_idx == 1) {
//			return "/community/" + "reportList";
//			
//		} else return "/community/" + "comment_report";

		
		return "/community/" + "reportList";
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


