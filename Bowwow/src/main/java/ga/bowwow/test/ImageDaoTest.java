package ga.bowwow.test;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import ga.bowwow.service.common.ImageVO;

public class ImageDaoTest {
	
	@Test
	public void ImageTest() {
		ApplicationContext ac = new GenericXmlApplicationContext("root-context.xml");
		ImageServiceImpl ImageService = ac.getBean("ImageService", ImageServiceImpl.class);
		
//		ImageDaoJdbcTemplate ImageDao = new ImageDaoJdbcTemplate();
//		ImageService.setImageDao(ImageDao);
		
		System.out.println(ImageService);
		ImageVO vo = new ImageVO();
		
		vo.setImageSerial(0);
		vo.setImageSource("/DummySource");

		
		System.out.println(vo.toString());
		ImageService.insertImage(vo);
		ImageVO voTest = ImageService.getImage(vo);
		System.out.println(voTest.toString());

		
		assertEquals(voTest.getImageSerial(), vo.getImageSerial());
		assertEquals(voTest.getImageSource(), vo.getImageSource());

	}
}
