package ga.bowwow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TilesController {
	@RequestMapping("/tiles/{path}.do")
	public ModelAndView tiles(@PathVariable("path") String path) {
		System.out.println(">> tiles 객체 생성!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/" + path);
		return mav;
	}
}
