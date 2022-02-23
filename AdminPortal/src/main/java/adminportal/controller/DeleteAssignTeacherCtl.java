package adminportal.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.model.DbConnectionProvider;

/**
 * Servlet implementation class DeleteAssignTeacherCtl
 */
@WebServlet(name = "DeleteAssignTeacherCtl", urlPatterns = {"/DeleteAssignTeacherCtl"})
public class DeleteAssignTeacherCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAssignTeacherCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id =request.getParameter("idAssignTeacher");
		
		System.out.println("Coming ID value is:" + id);
		
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			
			st.executeUpdate("delete from assignteacher where idAssignTeacher = '"+id+"'  ");
			
			response.sendRedirect("admin/viewAssignedClasses.jsp?msg=deleteOperationDoneForTeacher");
		} catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("admin/viewAssignedClasses.jsp?msg=deleteOperationNotDoneForTeacher");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
