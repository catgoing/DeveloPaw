package ga.bowwow.test;

import ga.bowwow.service.common.ImageVO;

public interface ImageService {
	void insertImage(ImageVO vo);
	ImageVO getImage(ImageVO vo);
}
