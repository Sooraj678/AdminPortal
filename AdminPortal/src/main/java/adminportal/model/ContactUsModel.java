package adminportal.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import adminportal.beans.AddClassBeans;
import adminportal.beans.ContactUsBeans;

public class ContactUsModel {
	
	public static long nextPk() {
	    long pk = 0;
	    Connection conn;
	    try {
	      conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("select Max(idContactUs) from contactus");
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
	
	public static long addContactUsData(ContactUsBeans data) {
	    int i = 0;
	    try {
	      Connection conn = DbConnectionProvider.getCon();
	      PreparedStatement stmt = conn.prepareStatement("insert into contactus values(?,?,?,?,?)");
	      stmt.setLong(1, nextPk());
	      
	      stmt.setString(2 , data.getContactName());
	      stmt.setString(3 , data.getContactEmail());
	      stmt.setString(4 , data.getContactSubject());
	      stmt.setString(5 , data.getContactMessage());
	      i =     stmt.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    return i;
}

}
