package ga.bowwow.service.user;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor @AllArgsConstructor
@ToString
public class UserWallet {
	int memberSerial;
	String walletId;
	String paytype;
	String bankname;
	String bankno;
	String cardname;
	String cardno;
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
//		result = prime * result + ((address == null) ? 0 : address.hashCode());
//		result = prime * result + ((addressDetail == null) ? 0 : addressDetail.hashCode());
//		result = prime * result + memberSerial;
//		result = prime * result + ((zonecode == null) ? 0 : zonecode.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
//		if (this == obj)
//			return true;
//		if (obj == null)
//			return false;
//		if (getClass() != obj.getClass())
//			return false;
//		UserWallet other = (UserWallet) obj;
//		if (address == null) {
//			if (other.address != null)
//				return false;
//		} else if (!address.equals(other.address))
//			return false;
//		if (addressDetail == null) {
//			if (other.addressDetail != null)
//				return false;
//		} else if (!addressDetail.equals(other.addressDetail))
//			return false;
//		if (memberSerial != other.memberSerial)
//			return false;
//		if (zonecode == null) {
//			if (other.zonecode != null)
//				return false;
//		} else if (!zonecode.equals(other.zonecode))
//			return false;
		return true;
	}
	
	
}
