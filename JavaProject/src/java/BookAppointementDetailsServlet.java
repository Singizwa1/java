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

@WebServlet("/BookAppointementDetailsServlet")
public class BookAppointementDetailsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String hospital = request.getParameter("hospital");
        String speciality = request.getParameter("speciality");
        String doctor = request.getParameter("doctorName");
        String medicalConcern = request.getParameter("medicalConcern");
        String firstDate = request.getParameter("firstDate");
       

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

           
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hidoctor?user=root&password=&serverTimezone=UTC");
                 PreparedStatement ps = con.prepareStatement(
                         "INSERT INTO information (Hospital_Name, Speciality, doctor, medical_concern, Date) VALUES (?, ?, ?, ?, ?)")) {

                
                ps.setString(1, hospital);
                ps.setString(2, speciality);
                ps.setString(3, doctor);
                ps.setString(4, medicalConcern);
                ps.setString(5, firstDate);
               
                ps.executeUpdate();

  
                response.sendRedirect("success.jsp?msg=success");

            } catch (SQLException e) {
                // Handle SQL exception
                response.sendRedirect("error.jsp?message=SQL Exception: " + e.getMessage());
                e.printStackTrace();
            }

        } catch (Exception e) {
            
            response.sendRedirect("error.jsp?message=Exception: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
