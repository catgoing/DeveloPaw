package ga.bowwow.service.store;

import java.util.List;

public interface StoreInquiryService {
	public void insertInquiry(Inquiry inquiry);
	public void updateInquiry(Inquiry inquiry);
	public void deleteInquiry(Inquiry inquiry);
	public Inquiry getInquiry(int inquiry_no);
	public List<Inquiry> getInquiryList(Inquiry inquiry);
}
