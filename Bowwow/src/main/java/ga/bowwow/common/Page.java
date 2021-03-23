package ga.bowwow.common;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Page {
	private int nowPage = 1;		//현재페이지
	private int nowBlock = 1;		//현재 블록(페이지 담는 단위)
	
	private int pageUnit = 8;		//블록당 표시하는 페이지 갯수
	private int pageSize = 8;		//한 페이지당 보여지는 게시물수

	private int totalRecord = 0;	//총 게시물 수
	private int totalPage = 0; 		//전체 페이지 갯수
	private int totalBlock = 0; 	//전체 블록 갯수
	
	private int begin = 0; 			//현재 페이지상의 시작 글번호
	private int end = 0; 			//현재 페이지상의 마지막 글번호
	
	private int beginPage = 0; 		//현재 블록의 시작 페이지 번호
	private int endPage = 0; 		//현재 블록의 끝 페이지 번호	
	
	// 페이징 처리
	public void setTotalPage() {
		totalPage = totalRecord / pageSize;
		if (totalRecord % pageSize > 0) totalPage++;
	}

	
}
	
		
	