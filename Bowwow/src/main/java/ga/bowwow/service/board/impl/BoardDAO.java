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
import ga.bowwow.service.board.Report;


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
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx", vo.getBoard_idx());
//		map.put("board_idx", 1);
//		map.put("board", vo);
		
		map.put("board_title", vo.getBoard_title());
		map.put("member_serial", vo.getMember_serial());
		map.put("board_content", vo.getBoard_content());
		map.put("img1", vo.getImg1());
		map.put("animal_class", vo.getAnimal_class());
		map.put("goods", vo.getGoods());
		map.put("area", vo.getArea());
		map.put("price", vo.getPrice());
		map.put("is_selled", vo.getIs_selled());
		
		mybatis.insert("BoardDAO.insertBoard", map);
		System.out.println("boarddao : " + vo);
	}
//	//글 입력
//	public void insertBoard(int board_idx, int board_no, Board vo) {
//		System.out.println("===> MyBatis로 insertBoard() 실행");
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("board_idx", board_idx);
//		map.put("board_no", board_no);
//		map.put("board", vo);
//		
////		map.put("board_title", vo.getBoard_title());
////		map.put("member_serial", vo.getMember_serial());
////		map.put("board_content", vo.getBoard_content());
////		map.put("img1", vo.getImg1());
////		map.put("animal_class", vo.getAnimal_class());
////		map.put("goods", vo.getGoods());
////		map.put("area", vo.getArea());
////		map.put("price", vo.getPrice());
////		map.put("is_selled", vo.getIs_selled());
//		
//		mybatis.insert("BoardDAO.insertBoard", map);
//		System.out.println("boarddao : " + vo);
//	}
	
	//글 수정
	public void updateBoard(int board_idx, int board_no, Board vo) {
		System.out.println("===> MyBatis로 updateBoard() 실행");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_idx", board_idx);
		map.put("board_no", board_no);
		map.put("board", vo);
		mybatis.update("BoardDAO.updateBoard", map);
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
	
//	public void boardDelete(Map<String, Object> map) {
//		System.out.println("===> MyBatis로 getComment2List() 실행-vo");
//		return mybatis.boardDelete(map);
//	}
	

	public List<Board> search(String board, String keyword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("board", board);
		map.put("keyword", keyword);
		System.out.println("map : " + map);
		System.out.println("===> MyBatis로 search() 실행-vo");
		return mybatis.selectList("BoardDAO.search",map);
	}
	
	
	public void insertReport(Report vo) {
		System.out.println("===> MyBatis로 insertReport() 실행");
		mybatis.insert("BoardDAO.report", vo);
		System.out.println("boardao : " + vo);
	}

}
