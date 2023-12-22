

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import bean.studentbean;
import dao.admindao;
import dao.studentdao;

/**
 * Servlet implementation class AdminEditStudentDetailsServlet
 */
public class AdminEditStudentDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditStudentDetailsServlet() {
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
int id=Integer.parseInt (request.getParameter("id"));
sb.setId(id);
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

        admindao sd= new admindao();
        int status = sd.update_Details(sb,id);
        if(status>=1)
		{
			pw.print("person data updated successfully");
		}
		else
		{
			pw.print("fail to update data");
		}
		

        // Redirect back to the Dashboard after updating
response.sendRedirect("admin/enrolledStudents.jsp?email"+request.getParameter("email"));
	}

	}

