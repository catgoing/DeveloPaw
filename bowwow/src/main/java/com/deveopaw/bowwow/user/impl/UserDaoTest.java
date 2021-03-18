package com.deveopaw.bowwow.user.impl;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.deveopaw.bowwow.user.UserPrimitiveVO;

public class UserDaoTest {
	
	@Test
	public void userTest() {
		ApplicationContext ac = new GenericXmlApplicationContext("root-context.xml");
		UserServiceImpl userService = ac.getBean("userService", UserServiceImpl.class);
		
//		UserDaoJdbcTemplate userDao = new UserDaoJdbcTemplate();
//		userService.setUserDao(userDao);
		
		System.out.println(userService);
		UserPrimitiveVO vo = new UserPrimitiveVO();
		
		vo.setMemberSerial(0);
		vo.setId("testDummy");
		vo.setPassword("testPassword");

		
		System.out.println(vo.toString());
		userService.insertUser(vo);
		UserPrimitiveVO voTest = userService.getUser(vo);
		System.out.println(voTest.toString());

		
		assertEquals(voTest.getMemberSerial(), vo.getMemberSerial());
		assertEquals(voTest.getId(), vo.getId());
		assertEquals(voTest.getPassword(), vo.getPassword());

	}
}
