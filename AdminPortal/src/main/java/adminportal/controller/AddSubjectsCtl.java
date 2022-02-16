package adminportal.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.beans.AddSubjectBeans;
import adminportal.model.AddSubjectModel;
import adminportal.model.UsersModel;

/**
 * Servlet implementation class AddSubjectsCtl
 */
@WebServlet(name = "AddSubjectsCtl", urlPatterns = { "/AddSubjectsCtl" })
public class AddSubjectsCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSubjectsCtl() {
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
		doGet(request, response);
		AddSubjectBeans data = new AddSubjectBeans();
		
		data.setSubjectName((request.getParameter("subjectName")));
		data.setClassName((request.getParameter("course")));
		
		long flag = AddSubjectModel.addSubjectsList(data);
		if ( flag>0) {
			System.out.println("Subjects List to respective classes inseretd Successfully: into subjects Table");
			//response.sendRedirect(OSMView.signupView+"?msg=valid");
			response.sendRedirect("admin/setUpSubjectsForClassesView.jsp?msg=valid");
		}
		else {
			System.out.println("Some Problem Occurs during Insertion of Data:");
			response.sendRedirect("admin/setUpSubjectsForClassesView.jsp?msg=invalid");
			//response.sendRedirect(OSMView.signupView+"?msg=invalid");
		}
		
		
	}

}
