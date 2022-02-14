package adminportal.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.beans.AdminPortalUsersBeans;
import adminportal.model.UsersModel;

/**
 * Servlet implementation class TeacherRegistrationCtl
 */

@WebServlet(name = "TeacherRegistrationCtl", urlPatterns = { "/TeacherRegistrationCtl" })
public class TeacherRegistrationCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TeacherRegistrationCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		String loginrole = request.getParameter("loginRole");
		System.out.println("Login as: "+ loginrole);
		if("Teacher".equals(loginrole)) {
			
			AdminPortalUsersBeans user = new AdminPortalUsersBeans();
			
			user.setLoginRole((request.getParameter("loginRole")));
			user.setFirstName((request.getParameter("firstname")));
			user.setMiddleName((request.getParameter("middlename")));
			user.setLastName((request.getParameter("lastname")));
			user.setQualification((request.getParameter("qualification")));
			user.setGender((request.getParameter("gender")));
			user.setPhoneNo((request.getParameter("phone")));
			user.setCurrentAddress((request.getParameter("address")));
			user.setEmail((request.getParameter("email")));
			user.setPassword((request.getParameter("psw")));
			user.setRetypedPassword((request.getParameter("psw-repeat")));
			user.setSecurityQuestions((request.getParameter("securityQuestions")));
			user.setAnswer((request.getParameter("answer")));
			user.setSalaryExpectation((request.getParameter("salary")));
			String course =null;
			
			user.setCourse(course);
			
			long flag = UsersModel.addUsers(user);
			
			if ( flag>0) {
				System.out.println("Data inseretd Successfully: into Users Table");
				//response.sendRedirect(OSMView.signupView+"?msg=valid");
				response.sendRedirect("teacherRegister.jsp?msg=valid");
			}
			else {
				System.out.println("Some Problem Occurs during Insertion of Data:");
				response.sendRedirect("teacherRegister.jsp?msg=invalid");
				//response.sendRedirect(OSMView.signupView+"?msg=invalid");
			}
			
			
		}
		else {
			System.out.println("Some Problem Occurs during Insertion of Data:");
			response.sendRedirect("teacherRegister.jsp?msg=invalid");
			//response.sendRedirect(OSMView.signupView+"?msg=invalid");
		}
		
	}
	

}
