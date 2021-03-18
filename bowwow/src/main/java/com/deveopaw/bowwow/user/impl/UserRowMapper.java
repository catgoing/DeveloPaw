package com.deveopaw.bowwow.user.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.deveopaw.bowwow.user.UserPrimitiveVO;

public class UserRowMapper implements RowMapper<UserPrimitiveVO>{

	@Override
	public UserPrimitiveVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		UserPrimitiveVO user = new UserPrimitiveVO();
		user.setMemberSerial(rs.getInt("MEMBER_SERIAL"));
		user.setId(rs.getString("ID"));
		user.setPassword(rs.getString("PASSWORD"));
		
		return user;
	}
}
