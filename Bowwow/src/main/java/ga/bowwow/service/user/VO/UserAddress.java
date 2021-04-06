package ga.bowwow.service.user.VO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor @AllArgsConstructor
@ToString
public class UserAddress {
	long memberSerial;
	long addressId;
	String address;
	String addressDetail;
	String zonecode;
}
