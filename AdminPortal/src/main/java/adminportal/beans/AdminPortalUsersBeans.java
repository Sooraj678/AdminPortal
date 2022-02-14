package adminportal.beans;

public class AdminPortalUsersBeans {
	
	String loginRole;
	String firstName;
	String middleName;
	String lastName;
	String course;
	String gender;
	String phoneNo;
	String currentAddress;
	String email;
	String password;
	String retypedPassword;
	String securityQuestions;
	String answer;
	String qualification;
	String salaryExpectation;
	
	public String getLoginRole() {
		return loginRole;
	}
	public void setLoginRole(String loginRole) {
		this.loginRole = loginRole;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getCurrentAddress() {
		return currentAddress;
	}
	public void setCurrentAddress(String currentAddress) {
		this.currentAddress = currentAddress;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRetypedPassword() {
		return retypedPassword;
	}
	public void setRetypedPassword(String retypedPassword) {
		this.retypedPassword = retypedPassword;
	}
	public String getSecurityQuestions() {
		return securityQuestions;
	}
	public void setSecurityQuestions(String securityQuestions) {
		this.securityQuestions = securityQuestions;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSalaryExpectation() {
		return salaryExpectation;
	}
	public void setSalaryExpectation(String salaryExpectation) {
		this.salaryExpectation = salaryExpectation;
	}
	
	
	@Override
	public String toString() {
		return "AdminPortalUsersBeans [loginRole=" + loginRole + ", firstName=" + firstName + ", middleName="
				+ middleName + ", lastName=" + lastName + ", course=" + course + ", gender=" + gender + ", phoneNo="
				+ phoneNo + ", currentAddress=" + currentAddress + ", email=" + email + ", password=" + password
				+ ", retypedPassword=" + retypedPassword + ", securityQuestions=" + securityQuestions + ", answer="
				+ answer + ", qualification=" + qualification + ", salaryExpectation=" + salaryExpectation + "]";
	}
	
	
	
}
