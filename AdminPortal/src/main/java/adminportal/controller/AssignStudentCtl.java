package adminportal.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.beans.AddSubjectBeans;
import adminportal.beans.AssignStudentBeans;
import adminportal.model.AddSubjectModel;
import adminportal.model.AssignStudentModel;

@WebServlet(name = "AssignStudentCtl", urlPatterns = {"/AssignStudentCtl"})
public class AssignStudentCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public AssignStudentCtl() {
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
		
		AssignStudentBeans data = new AssignStudentBeans();
		
//		String actionName = request.getParameter("assiginingClass");
//		System.out.println("Coming Action Name is: "+actionName);
		
		data.setNameStudent((request.getParameter("studentName")));
		
		data.setCourseStudent((request.getParameter("course")));
		
		data.setEmailStudent((request.getParameter("email")));
		
		data.setPhoneStudent((request.getParameter("phoneNo")));
		
		long flag = AssignStudentModel.assignStudentList(data);
		if ( flag>0) {
			System.out.println("Assign Classes List for Students is inseretd Successfully: into assignclasses Table");
			
			response.sendRedirect("admin/assignClassesAndTeacherView.jsp?msg=valid");
		}
		else {
			System.out.println("Some Problem Occurs during Insertion of Data:");
			response.sendRedirect("admin/assignClassesAndTeacherView.jsp?msg=invalid");
			
		}
	}

}
