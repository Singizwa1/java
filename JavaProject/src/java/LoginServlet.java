import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Database connection parameters
        try (Connection connection = DbConnection.connect()) {
            String sql = "SELECT id FROM registration WHERE email = ? AND password = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        // Login successful
                        int userId = resultSet.getInt("id");
                        
                        // Store user ID in session
                        HttpSession session = request.getSession();
                        session.setAttribute("userId", userId);

                        response.sendRedirect("bookpatientinformation.jsp?LoginResult=success?id="+resultSet.getInt("id"));
                    } else {
                        // Login failed
                        response.sendRedirect("Login.jsp?LoginResult=error");
                    }
                }
            }
        } catch (SQLException e) {
          
            response.sendRedirect("Login.jsp?LoginResult=error");
        }
    }
}