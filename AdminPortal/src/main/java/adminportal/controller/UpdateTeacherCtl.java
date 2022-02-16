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
 * Servlet implementation class UpdateTeacherCtl
 */
@WebServlet(name = "UpdateTeacherCtl", urlPatterns = { "/UpdateTeacherCtl" })

public class UpdateTeacherCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTeacherCtl() {
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
		
		String id =request.getParameter("id");
		System.out.println("Coming Id for Update Value is:" + id);
		
		String firstname =request.getParameter("firstname");
		String middlename =request.getParameter("middlename");
		String lastname =request.getParameter("lastname");
		String phone =request.getParameter("phone");
		String email =request.getParameter("email");
		String psw =request.getParameter("psw");
		String pswrepeat =request.getParameter("psw-repeat");
		String salary =request.getParameter("salary");
				
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			st.executeUpdate("update usersadminportal set firstName='"+firstname+"',middleName='"+middlename+"', lastName='"+lastname+"',phoneNo='"+phone+"', email='"+email+"', password='"+psw+"', retypedPassword='"+pswrepeat+"', salaryExpectation='"+salary+"' where id='"+id+"' ");
			response.sendRedirect("admin/viewRegisteredData.jsp?msg=Done");
		} catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("admin/viewRegisteredData.jsp?msg=wrong");
		}
		
	}

}
