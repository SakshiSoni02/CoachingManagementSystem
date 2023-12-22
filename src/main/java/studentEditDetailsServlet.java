

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import dao.studentdao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bean.studentbean;

/**
 * Servlet implementation class studentEditDetailsServlet
 */
public class studentEditDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentEditDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		studentbean sb = new studentbean();
String email= request.getParameter("email");
		  sb.setName(request.getParameter("name"));
        sb.setCity(request.getParameter("city")) ;
       sb.setContact( Long.parseLong (request.getParameter("contact")));
        sb.setCourse(request.getParameter("course"));
        sb.setFname(request.getParameter("fname")) ;
        sb.setDob(request.getParameter("dob"));
        sb.setGender( request.getParameter("gender"));
       sb.setAddress( request.getParameter("address"));
       sb.setUgcourse(request.getParameter("ugcourse"));
        sb.setCollege( request.getParameter("college"));
       sb.setYop( request.getParameter("yop"));
        sb.setGrade (Float.parseFloat(request.getParameter("grade")));
        sb.setFees(Integer.parseInt(request.getParameter("fees")));
        sb.setPass( request.getParameter("pass"));
        sb.setPin(Integer.parseInt(request.getParameter("pin")));

        studentdao sd= new studentdao();
        int status = sd.update_Details(sb,email);
        if(status>=1)
		{
			pw.print("person data updated successfully");
		}
		else
		{
			pw.print("fail to update data");
		}
		

        // Redirect back to the Dashboard after updating
       response.sendRedirect("student/student_dashboard.jsp");
	}

}
