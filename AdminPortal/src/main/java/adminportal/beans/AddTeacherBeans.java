package adminportal.beans;

public class AddTeacherBeans {
	
	String teacherName;
	String qualification;
	String specializedSubject;
	
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSpecializedSubject() {
		return specializedSubject;
	}
	public void setSpecializedSubject(String specializedSubject) {
		this.specializedSubject = specializedSubject;
	}
	
	
	@Override
	public String toString() {
		return "AddTeacherBeans [teacherName=" + teacherName + ", qualification=" + qualification
				+ ", specializedSubject=" + specializedSubject + "]";
	}
	
	

}
