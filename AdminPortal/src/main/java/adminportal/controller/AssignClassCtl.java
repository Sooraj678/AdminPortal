package adminportal.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import adminportal.beans.AssignClassBeans;
import adminportal.model.AssignClassModel;


/**
 * Servlet implementation class AssignClassCtl
 */
@WebServlet(name = "AssignClassCtl", urlPatterns = {"/AssignClassCtl"})
public class AssignClassCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignClassCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		AssignClassBeans data = new AssignClassBeans();
		data.setAvailableCourses((request.getParameter("availableCourse")));
		data.setAvailableSubjectsForAvailableCourses((request.getParameter("subjectName")));
		
		long flag = AssignClassModel.assignClassList(data);
		if ( flag>0) {
			System.out.println("Assign Classes List for Students is inseretd Successfully: into assignclasses Table");
			
			response.sendRedirect("admin/assignClassesAndTeacherView.jsp?msg=validClass");
		}
		else {
			System.out.println("Some Problem Occurs during Insertion of Data:");
			response.sendRedirect("admin/assignClassesAndTeacherView.jsp?msg=invalidClass");
			
		}
	}

}
