package com.deveopaw.bowwow.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.deveopaw.bowwow.user.UserPrimitiveVO;

//스프링JDBC JdbcTemplate 주입받아서(DI) 처리
@Repository
public class UserDaoJdbcTemplate {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	//SQL문
	private final String USER_INSERT
		= "INSERT INTO USER_PRIMITIVE (MEMBER_SERIAL, ID, PASSWORD) "
		+ "VALUES ((SELECT NVL(MAX(MEMBER_SERIAL),0) + 1 FROM USER_PRIMITIVE), ?, ?)";
	private final String USER_GET
		= "SELECT * FROM USER_PRIMITIVE WHERE MEMBER_SERIAL = ?";
	
	public UserDaoJdbcTemplate() {
		System.out.println(">> UserDAO() 객체 생성");
	}
	
	//글 입력
	public void insertUser(UserPrimitiveVO vo) {
		System.out.println("===> Spring JDBC(JdbcTemplate)로 insertUser() 실행");
		
		//Object[] args = {vo.getTitle(), vo.getWriter(), vo.getContent()};
		//super.getJdbcTemplate().update(User_INSERT, args);
		
		Object[] args = {vo.getId(), vo.getPassword() };

		System.out.println(args);
		System.out.println(jdbcTemplate);
		System.out.println(jdbcTemplate.update(USER_INSERT, args));
	}
		
	//게시글 1개 조회
	public UserPrimitiveVO getUser(UserPrimitiveVO vo) {
		System.out.println("===> Spring JDBC로 getUser() 실행");
		
		Object[] args = { vo.getMemberSerial() };
		
		return jdbcTemplate.queryForObject(USER_GET, 
				args, new UserRowMapper());
	}
}





