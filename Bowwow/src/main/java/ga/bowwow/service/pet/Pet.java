package ga.bowwow.service.pet;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	
	private String pet_serial;
	private String member_serial;
	private String image_source;
	private String animal_type;
	private String pet_name;
	private String pet_gender;
	private String pet_variety;
	private int pet_age;
	private String pet_size;
	private int pet_weight;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@JsonFormat(pattern = "yyyy/MM/dd")
	private String pet_birth;
	
	private int neck_length;
	private int back_length;
	private int chest_length;
	private String tnr;
	private String pet_etc;
	
}