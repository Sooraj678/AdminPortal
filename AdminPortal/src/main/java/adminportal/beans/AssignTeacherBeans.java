package adminportal.beans;

public class AssignTeacherBeans {
	
	String assignedTeacherName;
	String teacherQualification;
	String specializedSubjectOfTeacher;
	String scheduleOfClass;
	String studentName;
	String studentCourse;
	String  subjectForCourse;
	
	public String getSubjectForCourse() {
		return subjectForCourse;
	}
	public void setSubjectForCourse(String subjectForCourse) {
		this.subjectForCourse = subjectForCourse;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentCourse() {
		return studentCourse;
	}
	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
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
		return "AssignTeacherBeans [assignedTeacherName=" + assignedTeacherName + ", teacherQualification="
				+ teacherQualification + ", specializedSubjectOfTeacher=" + specializedSubjectOfTeacher
				+ ", scheduleOfClass=" + scheduleOfClass + ", studentName=" + studentName + ", studentCourse="
				+ studentCourse + ", subjectForCourse=" + subjectForCourse + "]";
	}
	
	

}
