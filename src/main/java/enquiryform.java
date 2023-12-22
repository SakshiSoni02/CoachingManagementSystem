

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import bean.studentbean;

/**
 * Servlet implementation class enquiryform
 */
public class enquiryform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enquiryform() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
      studentbean s = new studentbean();
      s.setEname(request.getParameter("name"));
		s.setEcontact(Long.parseLong(request.getParameter("contact")) ) ;
		s.setEsubject(request.getParameter("subject"));
		int status = 0;
		Connection con;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coaching","root", "");
			 Statement st = con.createStatement();
				PreparedStatement stmt=con.prepareStatement("insert into enquiry(name,contact,subject) values (?,?,?)");  
				stmt.setString(1, s.getEname());
				stmt.setLong(2, s.getEcontact());
				stmt.setString(3, s.getEsubject());
			
				status = stmt.executeUpdate();
				}
		catch(Exception e) {
			e.printStackTrace();
		}
		pw.print(status);
			 if (status > 0) {
		            // Show a popup message using JavaScript
		            pw.println("<script type=\"text/javascript\">");
		            pw.println("alert('Enquiry sent successfully');");
		            pw.println("location='Contact.jsp';"); // Redirect to home.jsp
		            pw.println("</script>");
		        } else {
		            pw.print("failed");
		        }
	
	}

}
