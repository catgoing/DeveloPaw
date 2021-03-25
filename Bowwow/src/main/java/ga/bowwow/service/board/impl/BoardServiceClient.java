package ga.bowwow.service.board.impl;

import java.util.List;

import org.springframework.context.support.GenericXmlApplicationContext;

import ga.bowwow.service.board.Board;
import ga.bowwow.service.board.BoardService;

public class BoardServiceClient {

	public static void main(String[] args) {
		//1. 스프링 컨테이너 구동
		GenericXmlApplicationContext container
			= new GenericXmlApplicationContext("applicationContext.xml");
		
		System.out.println("---- 컨테이너 구동 후 -----");
		//2. 스프링 컨테이너 사용
		BoardService boardService = (BoardService) container.getBean("boardService");
//		
//		//데이터 입력
//		Board vo = new Board();
//		vo.setBoard_no("55");
//		vo.setBoard_title("테스트-spring");
//		vo.setMember_serial("997");
//		vo.setBoard_content("테스트중-insert");
//		vo.setAnimal_class("1");
//		vo.setRegdate("sysdate");
//		boardService.insertBoard(vo);
		
		
		
		//전체 데이터 조회
		List<Board> list = boardService.getBoardList(2);
		for (Board board : list) {
			System.out.println("board: "+ board);
		}
		
		//3. 스프링 컨테이너 종료
		container.close();

	}

}
