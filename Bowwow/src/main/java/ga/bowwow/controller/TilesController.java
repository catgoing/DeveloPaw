package ga.bowwow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TilesController {
	@RequestMapping("/tiles/{path}.do")
	public ModelAndView tiles(@PathVariable("path") String path, Model model) {

		System.out.println(">> tiles 객체 생성!");
		System.out.println("tiles model : " + model);
		ModelAndView mav = new ModelAndView();
//		System.out.println("path : " + path);
//		mav.setViewName("/" + path);


		return mav;
	}

}
