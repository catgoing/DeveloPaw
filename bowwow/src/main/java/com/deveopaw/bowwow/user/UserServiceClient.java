package com.deveopaw.bowwow.user;

import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {

	public static void main(String[] args) {
		//1. 스프링 컨테이너 구동
		GenericXmlApplicationContext container
			= new GenericXmlApplicationContext("root-context.xml");
		
		System.out.println("---- 컨테이너 구동 후 -----");
		//2. 스프링 컨테이너 사용
		UserService userService = (UserService) container.getBean("UserService");

		System.out.println(userService);
		UserPrimitiveVO vo = container.getBean("userPrimitiveVO", UserPrimitiveVO.class);

		vo.setMemberSerial(0);
		vo.setId("testDummy");
		vo.setPassword("testPassword");
		System.out.println(vo.toString());
		
		userService.insertUser(vo);
		UserPrimitiveVO voTest = userService.getUser(vo);
		
//		assertEquals(voTest.getMemberSerial(), vo.getMemberSerial());
//		assertEquals(voTest.getId(), vo.getId());
//		assertEquals(voTest.getPassword(), vo.getPassword());
		

		System.out.println(voTest.toString());
		container.close();
	}

}
