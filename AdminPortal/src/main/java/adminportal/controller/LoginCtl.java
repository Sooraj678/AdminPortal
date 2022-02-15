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
import javax.servlet.http.HttpSession;

import adminportal.beans.AdminPortalUsersBeans;
import adminportal.model.DbConnectionProvider;

/**
 * Servlet implementation class LoginCtl
 */
@WebServlet(name= "LoginCtl",urlPatterns= { "/LoginCtl" })
public class LoginCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("Into Login CTL");
		
		//AdminPortalUsersBeans userLogin = new AdminPortalUsersBeans();
		
		String email = request.getParameter("username");
		System.out.println("Email is:" + email);
		String password = request.getParameter("password");
		System.out.println("Password is:" + password);
		String loginRole = request.getParameter("loginRole");
		System.out.println("Login Role:" + loginRole);
		
		if("admin370@gmail.com".equals(email) && "admin123".equals(password) && "Admin".equals(loginRole)) 
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);
			try {
				System.out.println("Into Admin Home Page:");
				response.sendRedirect("admin/adminHome.jsp");
				System.out.println("Into Admin Home Page:");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if("Student".equals(loginRole)) { 
			int z=0;
			try {
				Connection con = DbConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select *from usersadminportal where email = '"+email+"' and password = '"+password+"'");
				
				while(rs.next()) {
					HttpSession session = request.getSession(true);
					z=1;
					session.setAttribute("email", email);
					response.sendRedirect("studentHome.jsp");
				}
				if (z==0) {
					response.sendRedirect("login.jsp?msg=NotExist");
				}
				
			} catch (Exception e) {
				System.out.println(e);
				response.sendRedirect("login.jsp?msg=Invalid");
			}
			
		}
		
		else if("Teacher".equals(loginRole)) { 
			int z=0;
			try {
				Connection con = DbConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select *from usersadminportal where email = '"+email+"' and password = '"+password+"'");
				
				while(rs.next()) {
					HttpSession session = request.getSession(true);
					z=1;
					session.setAttribute("email", email);
					response.sendRedirect("teacherHome.jsp");
				}
				if (z==0) {
					response.sendRedirect("login.jsp?msg=NotExist");
				}
				
			} catch (Exception e) {
				System.out.println(e);
				response.sendRedirect("login.jsp?msg=Invalid");
			}
			
		}
	System.out.println("End of Login Ctl");	
			
	}
		
	}

