package com.deveopaw.bowwow.user;

import org.springframework.web.multipart.MultipartFile;

public class UserPrimitiveVO {
	private int memberSerial;
	private String id;
	private String password;
	//======== 파일 업로드 관련 =========
	private MultipartFile uploadFile;

	public int getMemberSerial() {
		return memberSerial;
	}
	public void setMemberSerial(int memberSerial) {
		this.memberSerial = memberSerial;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	public UserPrimitiveVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserPrimitiveVO(int memberSerial, String id, String password) {
		super();
		this.memberSerial = memberSerial;
		this.id = id;
		this.password = password;
	}
	@Override
	public String toString() {
		return "UserPrimitiveVO [memberSerial=" + memberSerial + ", id=" + id + ", password=" + password + "]";
	}
}
