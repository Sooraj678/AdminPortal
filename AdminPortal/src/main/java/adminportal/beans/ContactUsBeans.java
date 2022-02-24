package adminportal.beans;

public class ContactUsBeans {

	String contactName;
	String contactEmail;
	String contactSubject;
	String contactMessage;
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getContactEmail() {
		return contactEmail;
	}
	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}
	public String getContactSubject() {
		return contactSubject;
	}
	public void setContactSubject(String contactSubject) {
		this.contactSubject = contactSubject;
	}
	public String getContactMessage() {
		return contactMessage;
	}
	public void setContactMessage(String contactMessage) {
		this.contactMessage = contactMessage;
	}
	@Override
	public String toString() {
		return "ContactUsBeans [contactName=" + contactName + ", contactEmail=" + contactEmail + ", contactSubject="
				+ contactSubject + ", contactMessage=" + contactMessage + "]";
	}
	
	
}
