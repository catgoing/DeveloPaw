package ga.bowwow.user;

import java.util.List;

import ga.bowwow.user.UserAccount;

public interface UserAccountService {
	void insertUserAccount(UserAccount userAccount);
//	void updateUserAccount(UserAccount userAccount );
//	void deleteUserAccount(UserAccount userAccount );
	UserAccount getUserAccount(UserAccount userAccount );
//	List<UserAccount> getUserAccountList();
//	List<UserAccount> getUserAccountList(UserAccount userAccount );
}
