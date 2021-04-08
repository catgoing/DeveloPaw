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
	int member_serial;
	int address_id;
	String address;
	String address_detail;
	String zonecode;
	
	public UserAddress buildMemberSerial(int sessionMemberSerial) {
		this.member_serial = sessionMemberSerial;
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