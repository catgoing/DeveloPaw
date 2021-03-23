package ga.bowwow.service.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.board.Board;


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
		mybatis.insert("BoardDAO.insertBoard", vo);
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
	public Board getBoard(Board vo) {
		System.out.println("===> MyBatis로 getBoard() 실행");
		return mybatis.selectOne("BoardDAO.getBoard", vo);
	}
	
	public List<Board> getBoardList(Board vo) {
		System.out.println("===> MyBatis로 getBoardList() 실행-vo");
		
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}

	public List<Board> getBoardList() {
		
		return null;
	}	

}
