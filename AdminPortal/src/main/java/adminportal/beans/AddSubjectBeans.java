package adminportal.beans;

public class AddSubjectBeans {

	String subjectName;
	String className;
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	
	@Override
	public String toString() {
		return "AddSubjectBeans [subjectName=" + subjectName + ", className=" + className + "]";
	}
	
	
}
