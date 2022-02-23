package adminportal.beans;

public class AssignStudentBeans {
	
	String nameStudent;
	String courseStudent;
	String emailStudent;
	String phoneStudent;
	String availableCourses;
	String availableSubjectsForAvailableCourses;
	String assignedTeacherName;
	String teacherQualification;
	String specializedSubjectOfTeacher;
	String scheduleOfClass;
	
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
	public String getAssignedTeacherName() {
		return assignedTeacherName;
	}
	public void setAssignedTeacherName(String assignedTeacherName) {
		this.assignedTeacherName = assignedTeacherName;
	}
	public String getTeacherQualification() {
		return teacherQualification;
	}
	public void setTeacherQualification(String teacherQualification) {
		this.teacherQualification = teacherQualification;
	}
	public String getSpecializedSubjectOfTeacher() {
		return specializedSubjectOfTeacher;
	}
	public void setSpecializedSubjectOfTeacher(String specializedSubjectOfTeacher) {
		this.specializedSubjectOfTeacher = specializedSubjectOfTeacher;
	}
	public String getScheduleOfClass() {
		return scheduleOfClass;
	}
	public void setScheduleOfClass(String scheduleOfClass) {
		this.scheduleOfClass = scheduleOfClass;
	}
	@Override
	public String toString() {
		return "AssignClassesBeans [nameStudent=" + nameStudent + ", courseStudent=" + courseStudent + ", emailStudent="
				+ emailStudent + ", phoneStudent=" + phoneStudent + ", availableCourses=" + availableCourses
				+ ", availableSubjectsForAvailableCourses=" + availableSubjectsForAvailableCourses
				+ ", assignedTeacherName=" + assignedTeacherName + ", teacherQualification=" + teacherQualification
				+ ", specializedSubjectOfTeacher=" + specializedSubjectOfTeacher + ", scheduleOfClass="
				+ scheduleOfClass + "]";
	}
	
	

	

}
