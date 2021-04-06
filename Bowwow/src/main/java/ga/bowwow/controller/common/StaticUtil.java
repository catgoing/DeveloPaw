package ga.bowwow.controller.common;

import java.util.List;

public class StaticUtil {
	public static boolean isNotNull(Object object) {
		System.out.println("isNotNull Object: " + object);
		
		return (object != null) ? true : false;
	}
	public static boolean isListNotNull(Object object) {
		System.out.println("isNotNull List: " + object);

		if(!isNotNull(object)) return false;
		
		List<Object> list = (List)object;
		return (list.size() > 0) ? true : false;
	}
}
