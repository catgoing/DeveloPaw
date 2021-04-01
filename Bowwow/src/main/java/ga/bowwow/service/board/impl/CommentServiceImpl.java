//package ga.bowwow.service.board.impl;
//
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import ga.bowwow.service.board.Comment;
//import ga.bowwow.service.board.CommentService;
//
//
//
//@Service("commentService")
//public class CommentServiceImpl implements CommentService{
//	@Autowired
//	private CommentDAO commentDAO;
//	
//	public CommentServiceImpl() {
//		System.out.println(">> CommentServiceImpl() 객체생성");
//	}
//	
//	@Override
//	public void insertComment(Comment vo) {
//		commentDAO.insertComment(vo);
//	}
//
//	@Override
//	public void updateComment(Comment vo) {
//		commentDAO.updateComment(vo);
//	}
//
//	@Override
//	public void deleteComment(Comment vo) {
//		commentDAO.deleteComment(vo);
//	}
//
//	@Override
//	public Comment getComment(Map<String, Integer> map) {
//		return commentDAO.getComment(map);
//	}
//
////	@Override
////	public List<Comment> getCommentList() {
////		return commentDAO.getCommentList();
////	}
//
//	@Override
//	public List<Comment> getCommentList(Map<String, Integer> map) {
//		return commentDAO.getCommentList(map);
//	}
//	
//
//	@Override
//	public List<Comment> getComment2List(Map<String, Integer> map) {
//		return commentDAO.getComment2List(map);
//	}
//
//}
