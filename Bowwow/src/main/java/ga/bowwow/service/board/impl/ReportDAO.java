package ga.bowwow.service.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.Comment;
import ga.bowwow.service.board.Report;


@Repository("reportDAO")
public class ReportDAO {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public ReportDAO() {
		System.out.println(">> CommentDAOMybatis() 객체생성");
	}
	

	//게시글 신고 처리
	public void updateBoardReport(Report vo) {
		System.out.println("===> MyBatis로 updateComment() 실행");
		mybatis.update("BoardDAO.updateComment", vo);
	}

	
	//댓글 신고 처리
	public void updateCommentReport(Report vo) {
		System.out.println("===> MyBatis로 updateComment() 실행");
		mybatis.update("BoardDAO.updateComment", vo);
	}
	

	//신고 리스트 출력(idx = 1 게시물, idx = 2 댓글)
	public List<Report> getReportList(int report_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("report_idx", report_idx);
		System.out.println("===> MyBatis로 getReportList() 실행-vo");
//		System.out.println("dao board_name: " + board_name);
		
		return mybatis.selectList("BoardDAO.getReportList", map);
	}
	
	//신고 상세 조회
	public Report getReport(int report_idx, int report_no) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("report_idx", report_idx);
		map.put("report_no", report_no);
		System.out.println("===> MyBatis로 getBoard() 실행");
		
		return mybatis.selectOne("BoardDAO.getBoard", map);
	}



}
