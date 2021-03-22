package ga.bowwow.store;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class store {
	private int p_id;
	private String p_name;
	private String p_type;
	private String p_category;
	private int price;
	private int stock;
	private String s_image;
	private String l_image;
	private String p_pick;

	
	//검색조건용 필드 추가
	@JsonIgnore
	private String searchCondition;
	@JsonIgnore
	private String searchKeyword;
	
	//파일업로드용 필드 추가
	@JsonIgnore
	private MultipartFile uploadFile;
	
	public store() {
		System.out.println(">> BoardVO() 객체 생성");
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}


	public String getP_name() {
		return p_name;
	}


	public void setP_name(String p_name) {
		this.p_name = p_name;
	}


	public String getP_type() {
		return p_type;
	}


	public void setP_type(String p_type) {
		this.p_type = p_type;
	}


	public String getP_category() {
		return p_category;
	}


	public void setP_category(String p_category) {
		this.p_category = p_category;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getStock() {
		return stock;
	}


	public void setStock(int stock) {
		this.stock = stock;
	}


	public String getS_image() {
		return s_image;
	}


	public void setS_image(String s_image) {
		this.s_image = s_image;
	}


	public String getL_image() {
		return l_image;
	}


	public void setL_image(String l_image) {
		this.l_image = l_image;
	}


	public String getP_pick() {
		return p_pick;
	}


	public void setP_pick(String p_pick) {
		this.p_pick = p_pick;
	}
	

	@Override
	public String toString() {
		return "store [p_id=" + p_id + ", p_name=" + p_name + ", p_type=" + p_type + ", p_category=" + p_category
				+ ", price=" + price + ", stock=" + stock + ", s_image=" + s_image + ", l_image=" + l_image
				+ ", p_pick=" + p_pick + ", searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword
				+ ", uploadFile=" + uploadFile + "]";
	}

	//============================
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	//======== 파일 업로드 관련 =========

	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
}
