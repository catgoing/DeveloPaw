package ga.bowwow.service.pet;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Component
public class Pet {
	
	private int pet_serial;
	private int member_serial;
	private String image_source_oriname;
	private MultipartFile image_source;
	private String animal_type;
	private String pet_name;
	private String pet_gender;
	private String pet_variety;
	private String pet_size;
	private String tnr;
	private String pet_etc;
		
	private int pet_age;
	private int pet_weight;
	private int neck_length;
	private int back_length;
	private int chest_length;
	
	//@DateTimeFormat(pattern="yyyy-MM-dd") - Date타입일 때
	private String pet_birth;
}