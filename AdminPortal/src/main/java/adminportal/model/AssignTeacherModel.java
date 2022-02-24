package adminportal.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import adminportal.beans.AssignStudentBeans;
import adminportal.beans.AssignTeacherBeans;

public class AssignTeacherModel {

	public static long nextPk() {
	    long pk = 0;
	    Connection conn;
	    try {
	      conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("select Max(idAssignTeacher) from assignteacher");
	      ResultSet rs = stmt.executeQuery();
	      while(rs.next()){
	        pk = rs.getLong(1);
	      }
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    return pk+1;
	    
	  }
	
	public static long assignTeacherList(AssignTeacherBeans data) {
	    int i = 0;
	    try {
	      Connection conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("insert into assignteacher values(?,?,?,?,?,?,?,?)");
	      
	      stmt.setLong(1, nextPk());
	      
	      stmt.setString(2, data.getAssignedTeacherName());
	      stmt.setString(3, data.getTeacherQualification());
	      stmt.setString(4, data.getSpecializedSubjectOfTeacher());
	      stmt.setString(5, data.getScheduleOfClass());
	      stmt.setString(6, data.getStudentName());
	      stmt.setString(7, data.getStudentCourse());
	      stmt.setString(8, data.getSubjectForCourse());
	      i =     stmt.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    return i;
}
}
