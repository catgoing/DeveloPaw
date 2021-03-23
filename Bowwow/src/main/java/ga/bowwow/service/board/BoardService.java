package ga.bowwow.service.board;

import java.util.List;

public interface BoardService {
	
	void insertBoard(Board vo);
	void updateBoard(Board vo);
	void deleteBoard(Board vo);
	Board getBoard(Board vo);
	List<Board> getBoardList();
	List<Board> getBoardList(Board vo);

}
