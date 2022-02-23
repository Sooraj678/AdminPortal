package adminportal.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import adminportal.beans.AssignStudentBeans;

public class AssignStudentModel {
	

	public static long nextPk() {
	    long pk = 0;
	    Connection conn;
	    try {
	      conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("select Max(idAssignStudent) from assignstudent");
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
	
	public static long assignStudentList(AssignStudentBeans data) {
	    int i = 0;
	    try {
	      Connection conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("insert into assignstudent values(?,?,?,?,?)");
	      
	      stmt.setLong(1, nextPk());
	      
	      stmt.setString(2, data.getNameStudent());
	      stmt.setString(3, data.getCourseStudent());
	      stmt.setString(4, data.getEmailStudent());
	      stmt.setString(5, data.getPhoneStudent());      
	      i =     stmt.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    return i;
}

}
