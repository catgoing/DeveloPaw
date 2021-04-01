package ga.bowwow.service.board;

import java.util.List;

public interface BoardService {
	
	void insertBoard(Board vo);
	void updateBoard(Board vo);
	void deleteBoard(Board vo);
	Board getBoard(String board_no);
//	List<Board> getBoardList();
	List<Board> getBoardList(int idx);

}
