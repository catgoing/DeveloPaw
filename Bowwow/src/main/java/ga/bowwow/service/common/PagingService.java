package ga.bowwow.service.common;

import java.util.HashMap;
import java.util.Map;

import ga.bowwow.common.Page;

public interface PagingService {
	
	default Map<String, Object> getPageMap(Page p, String idx, String keyword, String id, int board_idx){
		
		Map<String, Object> map = new HashMap<>();
		map.put("begin", Integer.toString(p.getRecordBeginIdx()));
		map.put("end", Integer.toString(p.getRecordEndIdx()));
		map.put("id", id);
		map.put("idx", idx);
		map.put("keyword", keyword);
		map.put("board_idx", "");
		map.put("p_type", "");
		map.put("p_category", "");
		
		return map;
	}	
	
	abstract void doPaging(Page p, String idx, String keyword, String id, int board_idx);

}
