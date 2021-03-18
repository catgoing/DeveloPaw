package com.deveopaw.bowwow.image;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ImageRowMapper implements RowMapper<ImageVO>{

	@Override
	public ImageVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		ImageVO Image = new ImageVO();
		Image.setImageSerial(rs.getInt("IMAGE_SERIAL"));
		Image.setImageSource(rs.getString("IMAGE_SOURCE"));
		return Image;
	}
}
