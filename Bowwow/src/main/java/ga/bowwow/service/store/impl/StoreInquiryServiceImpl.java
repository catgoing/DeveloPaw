package ga.bowwow.service.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ga.bowwow.service.store.Inquiry;
import ga.bowwow.service.store.StoreInquiryService;

@Service
public class StoreInquiryServiceImpl implements StoreInquiryService {
	@Autowired
	private StoreDAO storeDAO;
	
	@Override
	public void insertInquiry(Inquiry inquiry) {
		System.out.println("impl-------------");
		System.out.println(inquiry);
		storeDAO.insertInquiry(inquiry);		
	}

	@Override
	public void updateInquiry(Inquiry inquiry) {

	}

	@Override
	public void deleteInquiry(Inquiry inquiry) {

	}

	@Override
	public Inquiry getInquiry(int inquiry_no) {
		return null;
	}

	@Override
	public List<Inquiry> getInquiryList(Inquiry inquiry) {
		return null;
	}

}
