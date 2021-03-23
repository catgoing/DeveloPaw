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
	
	private String petSerial;
	private String memberSerial;
	private String imageSource;
	private String animalType;
	private String petName;
	private String petGender;
	private String petVariety;
	private int petAge;
	private String petSize;
	private int petWeight;
	private String petBirth;
	private int neckLength;
	private int backLength;
	private int chestLength;
	private String tnr;
	
}