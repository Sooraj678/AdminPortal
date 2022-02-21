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
 * Servlet implementation class UpdateTeacherListCtl
 */
@WebServlet(name = "UpdateTeacherListCtl", urlPatterns = { "/UpdateTeacherListCtl" })
public class UpdateTeacherListCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTeacherListCtl() {
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
		
		String idTeacher =request.getParameter("idTeacher");
		System.out.println("Coming Id for Update Value is:" + idTeacher);
		
		String qualification =request.getParameter("qualification");
		System.out.println("Coming Value for qualification is:" + qualification);
		
		String teacherName =request.getParameter("teacherName");
		System.out.println("Coming Value for teacherName is:" + teacherName);
		
		String subjectName =request.getParameter("subjectName");
		System.out.println("Coming Value for subject is:" + subjectName);
		
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			
			int i=0;
			try {
				i = st.executeUpdate("UPDATE teachers SET teacherName='"+teacherName+"',qualification='"+qualification+"',specializedSubject='"+subjectName+"' where idTeacher='"+idTeacher+"' ");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println(e);
				e.printStackTrace();
				
			}
			
			//st.executeUpdate("update subjects set subjectName='AI' where idSubject='"+idSubject+"' ");
			
			System.out.println("Database updated successfully:" +i);
			response.sendRedirect("admin/showMasterListOfTeachers.jsp?msg=updateDone");
		} 
		
		catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("admin/showMasterListOfTeachers.jsp?msg=updateWrong");
		}
	}

}
