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
	long member_serial;
	long address_id;
	String address;
	String address_detail;
	String zonecode;
}
