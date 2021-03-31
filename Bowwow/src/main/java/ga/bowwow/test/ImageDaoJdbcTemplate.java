package ga.bowwow.test;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.common.ImageVO;

//스프링JDBC JdbcTemplate 주입받아서(DI) 처리
@Repository
public class ImageDaoJdbcTemplate {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	//SQL문
	private final String IMAGE_INSERT
		= "INSERT INTO IMAGE (IMAGE_SERIAL, IMAGE_SOURCE) "
		+ "VALUES ((SELECT NVL(MAX(IMAGE_SERIAL),0) + 1 FROM IMAGE), ?)";
	private final String IMAGE_GET
		= "SELECT * FROM IMAGE WHERE IMAGE_SERIAL = ?";
	
	public ImageDaoJdbcTemplate() {
		System.out.println(">> ImageDAO() 객체 생성");
	}
	
	//글 입력
	public void insertImage(ImageVO vo) {
		System.out.println("===> Spring JDBC(JdbcTemplate)로 insertImage() 실행");
		
		//Object[] args = {vo.getTitle(), vo.getWriter(), vo.getContent()};
		//super.getJdbcTemplate().update(Image_INSERT, args);
		
		Object[] args = {vo.getImageSource() };

		System.out.println(args);
		System.out.println(jdbcTemplate);
		System.out.println("is update sucess : " + jdbcTemplate.update(IMAGE_INSERT, args));
	}
		
	//게시글 1개 조회
	public ImageVO getImage(ImageVO vo) {
		System.out.println("===> Spring JDBC로 getImage() 실행");
		
		Object[] args = { vo.getImageSerial() };
		
		return jdbcTemplate.queryForObject(IMAGE_GET, 
				args, new ImageRowMapper());
	}
}





