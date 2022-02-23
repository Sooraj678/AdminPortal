package adminportal.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminportal.beans.AssignTeacherBeans;
import adminportal.model.AssignTeacherModel;

/**
 * Servlet implementation class AssignTeacherCtl
 */
@WebServlet(name = "AssignTeacherCtl", urlPatterns = {"/AssignTeacherCtl"})
public class AssignTeacherCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignTeacherCtl() {
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
		
		AssignTeacherBeans data = new AssignTeacherBeans();
		
		data.setAssignedTeacherName((request.getParameter("teacherName")));
		
		data.setTeacherQualification((request.getParameter("qualification")));
		
		data.setSpecializedSubjectOfTeacher((request.getParameter("specialSubject")));
		
		data.setScheduleOfClass((request.getParameter("classSchedule")));
		
		long flag = AssignTeacherModel.assignTeacherList(data);
		if ( flag>0) {
			System.out.println("Assign Teacher List for Students Classes is inseretd Successfully: into assignteacher Table");
			
			response.sendRedirect("admin/assignClassesAndTeacherView.jsp?msg=validTeacher");
		}
		else {
			System.out.println("Some Problem Occurs during Insertion of Data:");
			response.sendRedirect("admin/assignClassesAndTeacherView.jsp?msg=invalidTeacher");
			
		}
	}

}
