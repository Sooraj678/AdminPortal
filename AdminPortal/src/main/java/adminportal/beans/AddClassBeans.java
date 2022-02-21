package adminportal.beans;

public class AddClassBeans {

		String className;
		String subjectForClass;
		public String getClassName() {
			return className;
		}
		public void setClassName(String className) {
			this.className = className;
		}
		public String getSubjectForClass() {
			return subjectForClass;
		}
		public void setSubjectForClass(String subjectForClass) {
			this.subjectForClass = subjectForClass;
		}
		
		
		@Override
		public String toString() {
			return "AddClassBeans [className=" + className + ", subjectForClass=" + subjectForClass + "]";
		}
		
		
}
