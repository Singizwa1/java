import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
    
    public static Connection connect()
    {
        Connection con = null;
        try {
           Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/hidoctor", "root", "");

        } catch (ClassNotFoundException | SQLException ex) {
            return con;
        }
        
        return con;
    }
}