package ga.bowwow.controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ga.bowwow.common.Page;

@Controller("pageController")
public class PageController {
	
	@RequestMapping("/paging.do")
	public String paging(@ModelAttribute("page") Page page, 
			int recordCount, String cPage, int recordPerPage, int pagePerBlock,
			@ModelAttribute String viewName) {
		page.setPage(recordCount, cPage, recordPerPage, pagePerBlock);
		return viewName + ".jsp";
	}	
}
