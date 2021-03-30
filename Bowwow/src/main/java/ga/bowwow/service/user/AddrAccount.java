package ga.bowwow.service.user;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor @AllArgsConstructor
@ToString
public class AddrAccount {
	int memberSerial;
	String address_id;
	String Address;
	String detailAddress;
	String Zonecode;
}
