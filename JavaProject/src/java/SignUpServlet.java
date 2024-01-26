import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String userName = request.getParameter("UserName");
            String email = request.getParameter("Email");
            String userPassword = request.getParameter("Password");

            Connection con = null;
            PreparedStatement pst = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/hidoctor?user=root&password=&serverTimezone=UTC");
                pst = con.prepareStatement("INSERT INTO registration (username,email,password) VALUES (?, ?, ?)");
                pst.setString(1, userName);
                pst.setString(2, email);
                pst.setString(3, userPassword);
                pst.executeUpdate();

                
        
              response.sendRedirect("bookpatientinformation.jsp?msg=signup_success");
            } catch (ClassNotFoundException | SQLException e) {
        
                e.printStackTrace();
            } finally {
                
                if (pst != null) pst.close();
                if (con != null) con.close();
            }
 
        } catch (SQLException e) {
            response.sendRedirect("error.jsp"); 
        }
    }
}
