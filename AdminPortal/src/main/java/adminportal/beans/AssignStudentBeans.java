package adminportal.beans;

public class AssignStudentBeans {
	
	String nameStudent;
	String courseStudent;
	String emailStudent;
	String phoneStudent;
	String subjectForCourse;
	
	public String getSubjectForCourse() {
		return subjectForCourse;
	}
	public void setSubjectForCourse(String subjectForCourse) {
		this.subjectForCourse = subjectForCourse;
	}
	public String getNameStudent() {
		return nameStudent;
	}
	public void setNameStudent(String nameStudent) {
		this.nameStudent = nameStudent;
	}
	public String getCourseStudent() {
		return courseStudent;
	}
	public void setCourseStudent(String courseStudent) {
		this.courseStudent = courseStudent;
	}
	public String getEmailStudent() {
		return emailStudent;
	}
	public void setEmailStudent(String emailStudent) {
		this.emailStudent = emailStudent;
	}
	public String getPhoneStudent() {
		return phoneStudent;
	}
	public void setPhoneStudent(String phoneStudent) {
		this.phoneStudent = phoneStudent;
	}
	
	@Override
	public String toString() {
		return "AssignStudentBeans [nameStudent=" + nameStudent + ", courseStudent=" + courseStudent + ", emailStudent="
				+ emailStudent + ", phoneStudent=" + phoneStudent + ", subjectForCourse=" + subjectForCourse + "]";
	}
	
	

	

}
