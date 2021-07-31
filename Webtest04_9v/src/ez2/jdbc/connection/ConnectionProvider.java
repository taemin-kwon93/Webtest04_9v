package ez2.jdbc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionProvider {

		public static Connection getConnection() throws SQLException {
			
			
			//String jdbcDriver = "jdbc:apache:commons:dbcp:/pool";         
	        //return DriverManager.getConnection(jdbcDriver);
			return DriverManager.getConnection("jdbc:apache:commons:dbcp:/pool");
		}

}
