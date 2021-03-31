package ga.bowwow.service.board;

import java.util.List;
import java.util.Map;

public interface BoardService {
	
	void insertBoard(Board vo);
	void updateBoard(Board vo);
	void deleteBoard(Board vo);
	Board getBoard(Map<String, Integer> map);
//	List<Board> getBoardList();

	//List<Board> getBoardList(int idx);
	
	List<Board> search(String string, String keyword);

	List<Board> getBoardList(Map<String, Integer> map);
	void insertReport(Report vo);
	void insertComment(Comment vo);
	void updateComment(Comment vo);
	void deleteComment(Comment vo);
	List<Comment> getCommentList(Map<String, Integer> map);
	
	
	void insertComment2(Comment vo);
	void updateComment2(Comment vo);
	void deleteComment2(Comment vo);
	List<Comment> getComment2List(Map<String, Integer> map);
	
	


}
