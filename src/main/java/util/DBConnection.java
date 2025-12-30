package util;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String URL ="jdbc:mysql://localhost:3306/helpdesk";
	private static String USERNAME ="root";
	private static String PASSWORD ="Dula91254@+=";
	private static Connection con;
	
    
    public static Connection getConnection() {
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
    		System.out.println("Database Connect!");
    	}catch(Exception e) {
    		System.out.println("Database Not Connect!");
    	}
    	return con;
    }
}
