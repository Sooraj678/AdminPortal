package adminportal.controller;

public interface LAAPView {

	/* Managing URLs by Interfaces only --> for JSP Pages*/
	public String App_CONTEXT = "/AdminPortal";
	public String ADMIN_FOLDER = "/admin";
	
	/* Managing URLs by Servlets only --> For controller that is Servlet */
	public String StudentRegistrationCtl =App_CONTEXT+"/StudentRegistrationCtl";
	public String TeacherRegistrationCtl =App_CONTEXT+"/TeacherRegistrationCtl";
	public String LoginCtl =App_CONTEXT+"/LoginCtl";
	public String UpdateStudentCtl =App_CONTEXT+"/UpdateStudentCtl";
	public String UpdateTeacherCtl =App_CONTEXT+"/UpdateTeacherCtl";
	public String DeleteCtl =App_CONTEXT+"/DeleteCtl";
	public String AddSubjectsCtl =App_CONTEXT+"/AddSubjectsCtl";
	public String DeleteSubjectCtl =App_CONTEXT+"/DeleteSubjectCtl";
	public String UpdateStudentListCtl =App_CONTEXT+"/UpdateStudentListCtl";
	public String AddTeacherCtl =App_CONTEXT+"/AddTeacherCtl";
	public String DeleteTeacherCtl =App_CONTEXT+"/DeleteTeacherCtl";
	public String UpdateTeacherListCtl =App_CONTEXT+"/UpdateTeacherListCtl";
	
	
	
	
	
	
	
}
