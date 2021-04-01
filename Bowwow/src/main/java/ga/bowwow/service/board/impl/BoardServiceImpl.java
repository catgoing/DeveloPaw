package ga.bowwow.service.board.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.BoardService;
import ga.bowwow.service.board.Comment;
import ga.bowwow.service.board.Report;


@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private CommentDAO commentDAO;
	
	public BoardServiceImpl() {
		System.out.println(">> BoardServiceImpl() 객체생성");
	}
	
//	@Override
//	public void insertBoard(int board_idx, int board_no, Board vo) {
//		boardDAO.insertBoard(board_idx, board_no, vo);
//	}
	@Override
	public void insertBoard(Board vo) {
		boardDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(int board_idx, int board_no, Board vo) {
		boardDAO.updateBoard(board_idx, board_no, vo);
	}

	@Override
	public void deleteBoard(Board vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public Board getBoard(Map<String, Integer> map) {
		return boardDAO.getBoard(map);
	}

//	@Override
//	public List<Board> getBoardList() {
//		return boardDAO.getBoardList();
//	}
	
	@Override
	public List<Board> getBoardList(Map<String, Integer> map) {
		return boardDAO.getBoardList(map);
	}

	

	//댓글부분
	
	@Override
	public void insertComment(Comment vo) {
		System.out.println("service: " + vo);
		commentDAO.insertComment(vo);
		
	}

	@Override
	public void updateComment(Comment vo) {
		commentDAO.updateComment(vo);
	}

	@Override
	public void deleteComment(Comment vo) {
		commentDAO.deleteComment(vo);
	}
	

	@Override
	public List<Comment> getCommentList(Map<String, Integer> map) {
		return boardDAO.getCommentList(map);
	}
	
	
	//대댓글 부분
	
	@Override
	public void insertComment2(Comment vo) {
		commentDAO.insertComment2(vo);
	}

	@Override
	public void updateComment2(Comment vo) {
		commentDAO.updateComment2(vo);
	}

	@Override
	public void deleteComment2(Comment vo) {
		commentDAO.deleteComment2(vo);
	}


	@Override
	public List<Comment> getComment2List(Map<String, Integer> map) {
		return boardDAO.getComment2List(map);
	}
	
	public List<Board> search(String board, String keyword) {
		return boardDAO.search(board, keyword);
	}

	@Override
	public void insertReport(Report vo) {
		System.out.println("report vo  :  " + vo);
		boardDAO.insertReport(vo);
		
		
	}
	

}
