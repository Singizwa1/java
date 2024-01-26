import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/PatientInformationServlet")
@MultipartConfig
public class PatientInformationServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve data from the HTML form
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String gender = request.getParameter("gender");
        String phoneNumber = request.getParameter("phonenumber");
        String emailAddress = request.getParameter("emailaddress");
        String birthDate = request.getParameter("birthDate");

        // Retrieve file parts
        Part insurancePart = request.getPart("insurance");
        Part medicalFilesPart = request.getPart("medicalFiles");

        // Directory where files will be stored
        String uploadDirectory = getServletContext().getRealPath("/uploads");

        // JDBC variables
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hidoctor?user=root&password=&serverTimezone=UTC");
             PreparedStatement ps = con.prepareStatement(
                     "INSERT INTO display (first_name, last_name, Gender, phonenumber, Email, birthdate, insurance, Medical_History) " +
                             "VALUES (?, ?, ?, ?, ?, ?, ?, ?)")) {

            // Set parameters
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, gender);
            ps.setString(4, phoneNumber);
            ps.setString(5, emailAddress);
            ps.setString(6, birthDate);

            // Save file paths to be stored in the database
            String insuranceFilePath = saveFile(insurancePart, uploadDirectory);
            String medicalFilesFilePath = saveFile(medicalFilesPart, uploadDirectory);
            ps.setString(7, insuranceFilePath);
            ps.setString(8, medicalFilesFilePath);

            // Execute the insert statement
            ps.executeUpdate();

            // Redirect or send a response as needed
            response.sendRedirect("bookappointementdetails.jsp?msg=continue");

        } catch (SQLException e) {
    e.printStackTrace();

    // Get the exception message
    String errorMessage = e.getMessage();

    // Redirect to bookpatientinformation.jsp with the error message
    response.sendRedirect("bookpatientinformation.jsp?msg=fail&error=" + errorMessage);
}
    }

    private String saveFile(Part filePart, String directory) throws IOException {
        String fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();
        String filePath = directory + File.separator + fileName;

        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, new File(filePath).toPath(), StandardCopyOption.REPLACE_EXISTING);
        }

        return fileName;
    }
   
}
