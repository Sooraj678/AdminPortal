package adminportal.beans;

public class AssignClassBeans {

	String availableCourses;
	String availableSubjectsForAvailableCourses;
	
	public String getAvailableCourses() {
		return availableCourses;
	}
	public void setAvailableCourses(String availableCourses) {
		this.availableCourses = availableCourses;
	}
	public String getAvailableSubjectsForAvailableCourses() {
		return availableSubjectsForAvailableCourses;
	}
	public void setAvailableSubjectsForAvailableCourses(String availableSubjectsForAvailableCourses) {
		this.availableSubjectsForAvailableCourses = availableSubjectsForAvailableCourses;
	}
	
	@Override
	public String toString() {
		return "AssignClassBeans [availableCourses=" + availableCourses + ", availableSubjectsForAvailableCourses="
				+ availableSubjectsForAvailableCourses + "]";
	}
	
	
	
}
