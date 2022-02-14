package adminportal.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import adminportal.beans.AdminPortalUsersBeans;

public class UsersModel {
	
	
	public static long nextPk() {
	    long pk = 0;
	    Connection conn;
	    try {
	      conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("select Max(id) from usersadminportal");
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
	

	public static long addUsers(AdminPortalUsersBeans user) {
	    int i = 0;
	    try {
	      Connection conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("insert into usersadminportal values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	      stmt.setLong(1, nextPk());
	      
	      stmt.setString(2 , user.getLoginRole());
	      stmt.setString(3 , user.getFirstName());
	      stmt.setString(4 , user.getMiddleName());
	      stmt.setString(5 , user.getLastName());
	      stmt.setString(6 , user.getCourse());
	      stmt.setString(7 , user.getGender());
	      stmt.setString(8 , user.getPhoneNo());
	      stmt.setString(9,  user.getCurrentAddress());
	      stmt.setString(10, user.getEmail());
	      stmt.setString(11, user.getPassword());
	      stmt.setString(12, user.getRetypedPassword());
	      stmt.setString(13, user.getSecurityQuestions());
	      stmt.setString(14, user.getAnswer());
	      stmt.setString(15, user.getQualification());
	      stmt.setString(16, user.getSalaryExpectation());
	        
	      i =     stmt.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    return i;
}
}
