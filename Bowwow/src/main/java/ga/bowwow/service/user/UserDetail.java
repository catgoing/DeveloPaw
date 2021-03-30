package ga.bowwow.service.user;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@ToString
public class UserDetail {
	int memberSerial;
	String imageSource;
	String nickname;
	String realname;
	Date regDate;
	Date birthDay;
	String gender;
}
