
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import bean.studentbean;
import dao.studentdao;

@WebServlet("/studentregister")
public class studentregister extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public studentregister() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        studentbean obj1 = new studentbean();
        obj1.setName(request.getParameter("name"));
        obj1.setContact(Long.parseLong(request.getParameter("contact")));
        obj1.setEmail(request.getParameter("email"));
        obj1.setCity(request.getParameter("city"));
        obj1.setPass(request.getParameter("password"));
        obj1.setCourse(request.getParameter("courseSelection"));
        obj1.setFees(Integer.parseInt(request.getParameter("fees")));
        studentdao obj2 = new studentdao();
        int result = obj2.addData(obj1);
        if (result > 0) {
            // Show a popup message using JavaScript
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Data inserted successfully');");
            pw.println("location='index.jsp';"); // Redirect to home.jsp
            pw.println("</script>");
        } else {
            pw.print("failed");
        }
    }
}

