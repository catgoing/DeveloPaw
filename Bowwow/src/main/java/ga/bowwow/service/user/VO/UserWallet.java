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
	long member_serial;
	String wallet_id;
	String pay_type;
	String bank_name;
	String bank_no;
	String card_name;
	String card_no;
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserWallet other = (UserWallet) obj;
		if (pay_type == null) {
			if (other.pay_type != null)
				return false;
		} else if (!pay_type.equals(other.pay_type))
			return false;
		if (member_serial != other.member_serial)
			return false;
		if(pay_type.equals("bank")) {
			if (bank_name == null) {
				if (other.bank_name != null)
					return false;
			} else if (!bank_name.equals(other.bank_name))
				return false;
			if (bank_no == null) {
				if (other.bank_no != null)
					return false;
			} else if (!bank_no.equals(other.bank_no))
				return false;
		}
		if(pay_type.equals("card")) {
			if (card_name == null) {
				if (other.card_name != null)
					return false;
			} else if (!card_name.equals(other.card_name))
				return false;
			if (card_no == null) {
				if (other.card_no != null)
					return false;
			} else if (!card_no.equals(other.card_no))
				return false;
		}
		return true;
	}
}
