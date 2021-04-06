package ga.bowwow.service.user.VO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor @AllArgsConstructor
@ToString
public class UserWallet {
	long memberSerial;
	String walletId;
	String payType;
	String bankName;
	String bankNo;
	String cardName;
	String cardNo;
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserWallet other = (UserWallet) obj;
		if (payType == null) {
			if (other.payType != null)
				return false;
		} else if (!payType.equals(other.payType))
			return false;
		if (memberSerial != other.memberSerial)
			return false;
		if(payType.equals("bank")) {
			if (bankName == null) {
				if (other.bankName != null)
					return false;
			} else if (!bankName.equals(other.bankName))
				return false;
			if (bankNo == null) {
				if (other.bankNo != null)
					return false;
			} else if (!bankNo.equals(other.bankNo))
				return false;
		}
		if(payType.equals("card")) {
			if (cardName == null) {
				if (other.cardName != null)
					return false;
			} else if (!cardName.equals(other.cardName))
				return false;
			if (cardNo == null) {
				if (other.cardNo != null)
					return false;
			} else if (!cardNo.equals(other.cardNo))
				return false;
		}
		return true;
	}
}
