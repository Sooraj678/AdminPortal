package adminportal.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.beans.ContactUsBeans;
import adminportal.model.AddClassModel;
import adminportal.model.ContactUsModel;

/**
 * Servlet implementation class ContactUsCtl
 */
@WebServlet(name = "ContactUsCtl", urlPatterns = { "/ContactUsCtl" })
public class ContactUsCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ContactUsCtl() {
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
		
		ContactUsBeans data =new ContactUsBeans();

		data.setContactName((request.getParameter("name")));
		data.setContactEmail((request.getParameter("email")));
		data.setContactSubject((request.getParameter("subject")));
		data.setContactMessage((request.getParameter("message")));
		
		long flag = ContactUsModel.addContactUsData(data);
		if ( flag>0) {
			System.out.println("Classes's Master List Data is inseretd Successfully: into teachers Table");
			//response.sendRedirect(OSMView.signupView+"?msg=valid");
			response.sendRedirect("index.jsp?msg=valid");
		}
		else {
			System.out.println("Some Problem Occurs during Insertion of Data:");
			response.sendRedirect("index.jsp?msg=invalid");
			//response.sendRedirect(OSMView.signupView+"?msg=invalid");
		}
	}

}
