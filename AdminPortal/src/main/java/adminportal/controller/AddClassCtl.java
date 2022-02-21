package adminportal.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.beans.AddClassBeans;
import adminportal.beans.AddTeacherBeans;
import adminportal.model.AddClassModel;
import adminportal.model.AddTeacherModel;

/**
 * Servlet implementation class AddClassCtl
 */
@WebServlet(name = "AddClassCtl", urlPatterns = { "/AddClassCtl" })
public class AddClassCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddClassCtl() {
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
		
		AddClassBeans data = new AddClassBeans();
		
		data.setClassName((request.getParameter("class")));
		data.setSubjectForClass((request.getParameter("subjectName")));
		
		long flag = AddClassModel.addClassesList(data);
		if ( flag>0) {
			System.out.println("Classes's Master List Data is inseretd Successfully: into teachers Table");
			//response.sendRedirect(OSMView.signupView+"?msg=valid");
			response.sendRedirect("admin/MasterListForClassesView.jsp?msg=valid");
		}
		else {
			System.out.println("Some Problem Occurs during Insertion of Data:");
			response.sendRedirect("admin/MasterListForClassesView.jsp?msg=invalid");
			//response.sendRedirect(OSMView.signupView+"?msg=invalid");
		}
		
	}

}
