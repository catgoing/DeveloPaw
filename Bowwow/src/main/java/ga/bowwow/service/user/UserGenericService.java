package ga.bowwow.service.user;

import java.util.List;
import java.util.Map;

import ga.bowwow.service.user.VO.UserAccount;

public abstract class UserGenericService<T> {
	protected UserGenericDAO dao;
	
	//TODO public으로 둬도 될지 체크
	public boolean addVo(T vo) {
		dao.insert(vo);
		return isRegistSuccess(vo);
	}
	public boolean updateVo(T vo) {
		System.out.println("UPDATE TVO : " + vo);
		dao.update(vo);
		return isRegistSuccess(vo);
	} 
	public boolean deleteVo(T vo) {
		dao.delete(vo);
		return isResignSuccess(vo);
	}
	public T getVo(T vo) {
		System.out.println("GenericGet vo : " + vo);
		return (T)dao.get(vo);
	}
	public T searchVo(T vo) {
		return (T)dao.search(vo);
	}
	public abstract List<T> getVoList();
	public abstract List<T> getVoList(Map<String, String> map);
	
	protected boolean isUpdateSuccess(T vo, boolean expectBool) {
		return isVoSerialExist(vo) ? expectBool : !expectBool;
	}
	
	protected boolean isModifySuccess(T vo) {
		return isUpdateSuccess(vo, true);
	}
	protected boolean isResignSuccess(T vo) {
		return isUpdateSuccess(vo, false);
	}
	protected boolean isVoSerialExist(T vo) {
		return vo.equals(getVo(vo));
	}
	
	protected boolean isRegistSuccess(T vo) {
		return isVoValueExist(vo);
	}
	protected boolean isVoValueExist(T vo) {
		System.out.println("compare");
		System.out.println(vo);
		System.out.println(searchVo(vo));
		return vo.equals(searchVo(vo));
	}
	
}