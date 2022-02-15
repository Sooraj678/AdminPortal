package adminportal.model;

import java.sql.*;

public class DbConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adminportal-phase2", "root",
					"root");
			//System.out.println("Connection Object is:" + con);
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}
}
