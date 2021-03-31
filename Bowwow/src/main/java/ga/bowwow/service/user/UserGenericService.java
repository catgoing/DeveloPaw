package ga.bowwow.service.user;

import java.util.List;

public abstract class UserGenericService<T> {
	
	
	boolean addVo(T vo) {}
	boolean updateVo(T vo) {}
	boolean deleteVo(T vo) {}
	T getVo(T vo) {}
	List<T> getVoList(T vo) {}
	
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
	
	protected abstract T searchVo(T vo);
}