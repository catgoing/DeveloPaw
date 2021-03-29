package ga.bowwow.service.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.Comment;


@Repository("boardDAO")
public class BoardDAO {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public BoardDAO() {
		System.out.println(">> BoardDAOMybatis() 객체생성");
	}
	
	//글 입력
	public void insertBoard(Board vo) {
		System.out.println("===> MyBatis로 insertBoard() 실행");
//		mybatis.insert("BoardDAO.insertBoard", vo);
		System.out.println("boarddao : " + vo);
	}
	
	//글 수정
	public void updateBoard(Board vo) {
		System.out.println("===> MyBatis로 updateBoard() 실행");
		mybatis.update("BoardDAO.updateBoard", vo);
	}
	
	//글 삭제
	public void deleteBoard(Board vo) {
		System.out.println("===> MyBatis로 deleteBoard() 실행");
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}		
	
	//게시글 1개 조회
	public Board getBoard(Map<String, Integer> map) {
		System.out.println("===> MyBatis로 getBoard() 실행");
		return mybatis.selectOne("BoardDAO.getBoard", map);
	}
	
	public List<Board> getBoardList(Map<String, Integer> map) {
		
		System.out.println("===> MyBatis로 getBoardList() 실행-vo");
//		System.out.println("dao board_name: " + board_name);
		
		return mybatis.selectList("BoardDAO.getBoardList", map);
	}
	
	
	public List<Comment> getCommentList(Map<String, Integer> map) {
		System.out.println("===> MyBatis로 getCommentList() 실행-vo");
		
		return mybatis.selectList("BoardDAO.getCommentList", map);
	}
	
	public List<Comment> getComment2List(Map<String, Integer> map) {
		System.out.println("===> MyBatis로 getComment2List() 실행-vo");
		
		return mybatis.selectList("BoardDAO.getComment2List", map);
	}

//	public List<Board> getBoardList() {
//		
//		return null;
//	}	
	

	public List<Board> search(String board, String keyword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("board", board);
		map.put("keyword", keyword);
		System.out.println("map : " + map);
		System.out.println("===> MyBatis로 search() 실행-vo");
		return mybatis.selectList("BoardDAO.search",map);
	}

}
