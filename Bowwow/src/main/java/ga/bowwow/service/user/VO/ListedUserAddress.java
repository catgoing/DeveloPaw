package ga.bowwow.service.user.VO;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class ListedUserAddress<UserAddress> {
	private ArrayList<UserAddress> listedUserAddress;
}
