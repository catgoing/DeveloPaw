package ga.bowwow.service.user;

import java.util.List;

public interface UserGenericService<T> {
	boolean addVo(T vo);
	boolean updateVo(T vo);
	boolean deleteVo(T vo);
	T getVo(T vo);
	List<T> getVoList(T vo);
	
	default boolean isUpdateSuccess(T vo, boolean expectBool) {
		return isVoValueExist(vo) ? expectBool : !expectBool;
	};
	default boolean isResignSuccess(T vo) {
		return isUpdateSuccess(vo, false);
	}
	default boolean isRegisterSuccess(T vo) {
		return isUpdateSuccess(vo, true);
	}
	default boolean isVoValueExist(T vo) {
		System.out.println(vo);
		System.out.println(searchVo(vo));
		return vo.equals(searchVo(vo));
	}
	abstract T searchVo(T vo);
}