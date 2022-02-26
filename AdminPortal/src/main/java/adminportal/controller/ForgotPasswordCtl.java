package adminportal.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.model.DbConnectionProvider;

@WebServlet(name = "ForgotPasswordCtl", urlPatterns = { "/ForgotPasswordCtl" })
public class ForgotPasswordCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ForgotPasswordCtl() {
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
		
		String email = request.getParameter("username");
		String mobileNumber = request.getParameter("phoneNo");
		String securityQuestions = request.getParameter("securityQuestions");
		String answer = request.getParameter("answer");
		String loginRole = request.getParameter("loginRole");
		String newPassword = request.getParameter("newPassword");

		int check = 0;
		try {
			Connection con = DbConnectionProvider.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select *from usersadminportal where email='" + email + "' and phoneNo='"
					+ mobileNumber + "' and securityQuestions='" + securityQuestions + "' and answer='" + answer + "' and loginRole='" + loginRole +"' ");
			while (rs.next()) {
				check = 1;
				stmt.executeUpdate("update usersadminportal set password='" + newPassword + "' where email='" + email + "' ");
				response.sendRedirect("forgotPassword.jsp?msg=updated");
			}
			if (check == 0) {
				response.sendRedirect("forgotPassword.jsp?msg=notUpdated");
			}
		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
