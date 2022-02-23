package adminportal.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import adminportal.beans.AssignClassBeans;
import adminportal.beans.AssignStudentBeans;

public class AssignClassModel {
	
	public static long nextPk() {
	    long pk = 0;
	    Connection conn;
	    try {
	      conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("select Max(idAssignClass) from assignclasses");
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
	
	public static long assignClassList(AssignClassBeans data) {
	    int i = 0;
	    try {
	      Connection conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("insert into assignclasses values(?,?,?)");
	      
	      stmt.setLong(1, nextPk());
	      
	      stmt.setString(2, data.getAvailableCourses());
	      stmt.setString(3, data.getAvailableSubjectsForAvailableCourses());
	       
	      i =     stmt.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    return i;
}

}
