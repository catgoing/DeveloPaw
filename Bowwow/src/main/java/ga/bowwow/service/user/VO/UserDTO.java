package ga.bowwow.service.user.VO;

import java.sql.Date;
import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@ToString
public class UserDTO {
	int memberSerial;
	String id;
	String email;
	String citizenId;
	String phone;
	String password;
	String status;
	int point;
	String coupons;
	String imageSource;
	String nickname;
	String realname;
	Date regDate;
	Date birthday;
	String gender;
//	ArrayList<UserAddress> userAddress;
//	ArrayList<UserWallet> userWallet;
	
}
