package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;

public class ConnectionProvider {
	
	public static Connection getCon() {
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", "c##scott", "fikru");
			return con;
			
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

}
