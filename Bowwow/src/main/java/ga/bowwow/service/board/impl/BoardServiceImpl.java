package ga.bowwow.service.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.BoardService;
import ga.bowwow.service.board.Comment;


@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	public BoardServiceImpl() {
		System.out.println(">> BoardServiceImpl() 객체생성");
	}
	
	@Override
	public void insertBoard(Board vo) {
		boardDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(Board vo) {
		boardDAO.updateBoard(vo);
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
	//댓글
	@Override
	public List<Comment> getCommentList(Map<String, Integer> map) {
		return boardDAO.getCommentList(map);
	}
	//대댓글
	@Override
	public List<Comment> getComment2List(Map<String, Integer> map) {
		return boardDAO.getComment2List(map);
	}
	
	public List<Board> search(String board, String keyword) {
		return boardDAO.search(board, keyword);
	}
	

}
