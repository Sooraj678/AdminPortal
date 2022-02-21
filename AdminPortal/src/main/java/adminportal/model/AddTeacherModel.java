package adminportal.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import adminportal.beans.AddTeacherBeans;

public class AddTeacherModel {

	public static long nextPk() {
	    long pk = 0;
	    Connection conn;
	    try {
	      conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("select Max(idTeacher) from teachers");
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
	
	public static long addTeachersList(AddTeacherBeans data) {
	    int i = 0;
	    try {
	      Connection conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("insert into teachers values(?,?,?,?)");
	      stmt.setLong(1, nextPk());
	      
	      stmt.setString(2, data.getTeacherName());
	      stmt.setString(3, data.getQualification());
	      stmt.setString(4, data.getSpecializedSubject());
	      i =     stmt.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    return i;
}
}
