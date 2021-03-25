package ga.bowwow.service;

import org.springframework.web.multipart.MultipartFile;

public class ImageVO {
	private int imageSerial;
	private String imageSource;
	
	MultipartFile uploadImage;
	

	public int getImageSerial() {
		return imageSerial;
	}

	public void setImageSerial(int imageSerial) {
		this.imageSerial = imageSerial;
	}
	public String getImageSource() {
		return imageSource;
	}

	public void setImageSource(String imageSource) {
		this.imageSource = imageSource;
	}

	public ImageVO() {
		super();
	}
	
	public ImageVO(int imageSerial, String imageSource) {
		super();
		this.imageSerial = imageSerial;
		this.imageSource = imageSource;
	}

	@Override
	public String toString() {
		return "ImageVO [imageSource=" + imageSource + "]";
	}

	public MultipartFile getUploadFile() {
		return uploadImage;
	}
	public void setUploadFile(MultipartFile uploadImage) {
		this.uploadImage = uploadImage;
	}
}
