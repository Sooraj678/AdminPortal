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
 * Servlet implementation class DeleteAssignClassesCtl
 */
@WebServlet(name = "DeleteAssignClassesCtl", urlPatterns = {"/DeleteAssignClassesCtl"})
public class DeleteAssignClassesCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public DeleteAssignClassesCtl() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id =request.getParameter("idAssignClass");
		
		System.out.println("Coming ID value is:" + id);
		
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			
			st.executeUpdate("delete from assignclasses where idAssignClass = '"+id+"'  ");
			
			response.sendRedirect("admin/viewAssignedClasses.jsp?msg=deleteOperationDoneForClasses");
		} catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("admin/viewAssignedClasses.jsp?msg=deleteOperationNotDoneForClasses");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
