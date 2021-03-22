package ga.bowwow.user;

import java.util.List;

import ga.bowwow.user.UserAccount;

public interface UserAccountService {
	//CRUD 기능 구현 메소드 정의
	void insertUserAccount(UserAccount userAccount);
	void updateUserAccount(UserAccount userAccount );
	void deleteUserAccount(UserAccount userAccount );
	UserAccount getUserAccount(UserAccount userAccount );
	List<UserAccount> getUserAccountList();
	List<UserAccount> getUserAccountList(UserAccount userAccount );
}
