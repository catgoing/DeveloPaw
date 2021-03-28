package ga.bowwow.service.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.BoardService;


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
	public Board getBoard(String board_no) {
		return boardDAO.getBoard(board_no);
	}

//	@Override
//	public List<Board> getBoardList() {
//		return boardDAO.getBoardList();
//	}

	@Override
	public List<Board> getBoardList(int idx) {
//		Map<Integer, String> map = new HashMap<Integer, String>();
//		map.put(idx, board_name);

		return boardDAO.getBoardList(idx);
	}
	
	public Board search(String keyword) {
		return boardDAO.search(keyword);
	}
	

}
