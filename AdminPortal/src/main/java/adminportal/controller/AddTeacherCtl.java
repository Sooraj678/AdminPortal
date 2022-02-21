package adminportal.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.beans.AddSubjectBeans;
import adminportal.beans.AddTeacherBeans;
import adminportal.model.AddSubjectModel;
import adminportal.model.AddTeacherModel;

/**
 * Servlet implementation class AddTeacherCtl
 */

@WebServlet(name = "AddTeacherCtl", urlPatterns = { "/AddTeacherCtl" })
public class AddTeacherCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddTeacherCtl() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		doGet(request, response);
		AddTeacherBeans data = new AddTeacherBeans();
		
		data.setTeacherName((request.getParameter("teacherName")));
		data.setQualification((request.getParameter("qualification")));
		data.setSpecializedSubject((request.getParameter("subjectName")));
		
		long flag = AddTeacherModel.addTeachersList(data);
		if ( flag>0) {
			System.out.println("Teacher's Master List Data is inseretd Successfully: into teachers Table");
			//response.sendRedirect(OSMView.signupView+"?msg=valid");
			response.sendRedirect("admin/MasterListForTeachersView.jsp?msg=valid");
		}
		else {
			System.out.println("Some Problem Occurs during Insertion of Data:");
			response.sendRedirect("admin/MasterListForTeachersView.jsp?msg=invalid");
			//response.sendRedirect(OSMView.signupView+"?msg=invalid");
		}
		
		
	}
		

}
