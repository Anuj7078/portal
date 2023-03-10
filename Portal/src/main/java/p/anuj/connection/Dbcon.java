package p.anuj.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbcon {
	private static Connection conn=null;
	public static  Connection getConnection() throws ClassNotFoundException, SQLException {
		if(conn==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","Anuj@2711");
            System.out.print("connected");
		}
		return conn;
	}
}
