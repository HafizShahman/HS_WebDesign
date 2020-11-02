
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentRegister extends HttpServlet {

    private static final long serialVersionID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contactNo = request.getParameter("contactNo");

        if (firstName.isEmpty() || lastName.isEmpty() || username.isEmpty() || password.isEmpty() || address.isEmpty() || contactNo.isEmpty()) {
            RequestDispatcher req = request.getRequestDispatcher("StudentRegister.jsp");
            req.include(request, response);
        } else {
            RequestDispatcher req = request.getRequestDispatcher("formLogin.jsp");
            req.forward(request, response);
        }
    }
}
