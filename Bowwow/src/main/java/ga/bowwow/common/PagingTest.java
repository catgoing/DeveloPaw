package ga.bowwow.common;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class PagingTest {

	public static void main(String[] args) {
		ApplicationContext ac = new AnnotationConfigApplicationContext();
		PageController pageController = ac.getBean("pageController", ga.bowwow.common.PageController.class);
		
		Page page = new Page();
		pageController.paging(page, 30, "1", 7, 7, "getBoardList");
	}
}
