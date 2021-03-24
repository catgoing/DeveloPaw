package ga.bowwow.service.user;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter @Getter
@NoArgsConstructor @AllArgsConstructor
public class UserAccount {
	int memberSerial;
	String id;
	String email;
	String citizenId;
	String phone;
	String Password;
	String status;
	int point;
	String coupons;
}
