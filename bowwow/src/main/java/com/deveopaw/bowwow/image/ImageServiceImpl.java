package com.deveopaw.bowwow.image;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ImageService")
public class ImageServiceImpl implements ImageService {
	@Autowired
	private ImageDaoJdbcTemplate ImageDao;
	
	public void setImageDao(ImageDaoJdbcTemplate ImageDao) {
		this.ImageDao = ImageDao;
	}
	
	@Override
	public void insertImage(ImageVO vo) {
		System.out.println("insert" + ImageDao);
		ImageDao.insertImage(vo);
	}

	@Override
	public ImageVO getImage(ImageVO vo) {
		return ImageDao.getImage(vo);
	}

	public ImageServiceImpl() {	}
}
