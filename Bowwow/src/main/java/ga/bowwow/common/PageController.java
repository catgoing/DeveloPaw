package ga.bowwow.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("/paging.do")
	public String paging(@ModelAttribute("page") Page page, 
			int recordCount, String cPage, int recordPerPage, int pagePerBlock,
			@ModelAttribute String viewName) {
		page.setPage(recordCount, cPage, recordPerPage, pagePerBlock);
		return "getBoardList.jsp";
	}	
}
