package adminportal.controller;

public interface LAAPView {

	/* Managing URLs by Interfaces only --> for JSP Pages*/
	public String App_CONTEXT = "/AdminPortal";
	public String ADMIN_FOLDER = "/admin";
	
	/* Managing URLs by Servlets only --> For controller that is Servlet */
	public String StudentRegistrationCtl =App_CONTEXT+"/StudentRegistrationCtl";
	public String TeacherRegistrationCtl =App_CONTEXT+"/TeacherRegistrationCtl";
	public String LoginCtl =App_CONTEXT+"/LoginCtl";
	
	
}
