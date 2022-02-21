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

@WebServlet(name = "DeleteTeacherCtl", urlPatterns = { "/DeleteTeacherCtl" })

public class DeleteTeacherCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DeleteTeacherCtl() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String idTeacher =request.getParameter("idTeacher");
		System.out.println("Coming ID value is:" + idTeacher);
		
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			
			st.executeUpdate("delete from teachers where idTeacher = '"+idTeacher+"'  ");
			
			response.sendRedirect("admin/showMasterListOfTeachers.jsp?msg=deleteOpDone");
		} catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("admin/showMasterListOfTeachers.jsp?msg=wrong");
			}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
