package ga.bowwow.service.board.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.board.Comment;


@Repository("commentDAO")
public class CommentDAO {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public CommentDAO() {
		System.out.println(">> CommentDAOMybatis() 객체생성");
	}
	
	//댓글 입력
	public void insertComment(Comment vo) {
		System.out.println("===> MyBatis로 insertComment() 실행");
		System.out.println(vo);
		mybatis.insert("BoardDAO.insertComment", vo);
	}
	
	//댓글 수정
	public void updateComment(Comment vo) {
		System.out.println("===> MyBatis로 updateComment() 실행");
		mybatis.update("BoardDAO.updateComment", vo);
	}
	
	//댓글 삭제
	public void deleteComment(Comment vo) {
		System.out.println("===> MyBatis로 deleteComment() 실행");
		mybatis.delete("BoardDAO.deleteComment", vo);
	}
	
	
	//댓글 리스트 출력
	public List<Comment> getCommentList(Map<String, Integer> map) {
		
		System.out.println("===> MyBatis로 getCommentList() 실행-vo");
//		System.out.println("dao board_name: " + board_name);
		
		return mybatis.selectList("BoardDAO.getCommentList", map);
	}
	
	
	//대댓글 입력
	public void insertComment2(Comment vo) {
		System.out.println("===> MyBatis로 insertComment() 실행");
		mybatis.insert("BoardDAO.insertComment2", vo);
	}
	
	//대댓글 수정
	public void updateComment2(Comment vo) {
		System.out.println("===> MyBatis로 updateComment() 실행");
		mybatis.update("BoardDAO.updateComment2", vo);
	}
	
	//대댓글 삭제
	public void deleteComment2(Comment vo) {
		System.out.println("===> MyBatis로 deleteComment() 실행");
		mybatis.delete("BoardDAO.deleteComment2", vo);
	}	
	
	//댓글 1개 조회
	public Comment getComment(Map<String, Integer> map) {
		System.out.println("===> MyBatis로 getComment() 실행");
		return mybatis.selectOne("BoardDAO.getComment", map);
	}

	
	//대댓글 리스트 출력
	public List<Comment> getComment2List(Map<String, Integer> map) {
		System.out.println("===> MyBatis로 getComment2List() 실행-vo");
		
		return mybatis.selectList("BoardDAO.getComment2List", map);
	}
	
	


}
