package ga.bowwow.service.user.VO;

import ga.bowwow.controller.common.StaticUtil;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor @AllArgsConstructor
@ToString
public class UserAddress {
	Integer member_serial;
	long address_id;
	String address;
	String address_detail;
	String zonecode;
	
	public UserAddress buildMemberSerial(Integer member_serial) {
		this.member_serial = member_serial;
		return this;
	}
	public boolean isValueNeverNull() {
		return address != null
			&& address_detail != null
			&& zonecode != null
			&& !address.equals("")
			&& !address_detail.equals("")
			&& !zonecode.equals("");
	}
}