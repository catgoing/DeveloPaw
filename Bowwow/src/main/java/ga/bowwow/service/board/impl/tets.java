package ga.bowwow.service.board.impl;

public class tets {

	public static void main(String[] args) {
		String board_sc = "<p>asdasd<img src=\"https://projectbit.s3.us-east-2.amazonaws.com/diary/8628a677-935d-4940-8e57-900baf4482c8.png\" style=\"width: 50%;\">ddd</p><p><br></p><p>FFFa</p>";
		
		System.out.println(
				board_sc.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"," "));

	}

}
