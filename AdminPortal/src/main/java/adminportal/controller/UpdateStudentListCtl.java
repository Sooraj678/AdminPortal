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
 * Servlet implementation class UpdateStudentListCtl
 */
@WebServlet(name = "UpdateStudentListCtl", urlPatterns = { "/UpdateStudentListCtl" })
public class UpdateStudentListCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public UpdateStudentListCtl() {
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
		
		String idSubject =request.getParameter("idSubject");
		System.out.println("Coming Id for Update Value is:" + idSubject);
		String className =request.getParameter("course");
		System.out.println("Coming Value for course is:" + className);
		String subjectName =request.getParameter("subjectName");
		System.out.println("Coming Value for subject is:" + subjectName);
		
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			
			int i=0;
			try {
				i = st.executeUpdate("UPDATE subjects SET subjectName='"+subjectName+"',className='"+className+"' where idSubject='"+idSubject+"' ");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println(e);
				e.printStackTrace();
				
			}
			
			//st.executeUpdate("update subjects set subjectName='AI' where idSubject='"+idSubject+"' ");
			
			System.out.println("Database updated successfully:" +i);
			response.sendRedirect("admin/showMasterListOfSubjects.jsp?msg=updateDone");
		} 
		
		catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("admin/showMasterListOfSubjects.jsp?msg=updateWrong");
		}
	}

}
