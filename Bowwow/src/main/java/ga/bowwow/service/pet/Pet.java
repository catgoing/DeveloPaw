package ga.bowwow.service.pet;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
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
	private String pet_birth;
	private int neck_length;
	private int back_length;
	private int chest_length;
	private String tnr;
	private String petEtc;
	
}