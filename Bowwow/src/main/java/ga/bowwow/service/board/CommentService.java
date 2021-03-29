package ga.bowwow.service.board;

import java.util.List;
import java.util.Map;

public interface CommentService {
	
	void insertComment(Comment vo);
	void updateComment(Comment vo);
	void deleteComment(Comment vo);
	List<Comment> getCommentList(Map<String, Integer> map);
	
	void insertComment2(Comment vo);
	void updateComment2(Comment vo);
	void deleteComment2(Comment vo);
	List<Comment> getComment2List(Map<String, Integer> map);
	
	Comment getComment(Map<String, Integer> map);
//	List<Comment> getCommentList();

}
