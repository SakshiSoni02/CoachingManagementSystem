

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
 * Servlet implementation class admincircular
 */
public class admincircular extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admincircular() {
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

	        studentbean ob = new studentbean();
	        ob.setCtitle(request.getParameter("title"));
	        ob.setCircular(request.getParameter("description"));
	        admindao obj2 = new admindao();
	        int result = obj2.addCircular(ob);
	        if (result > 0) {
	        	  pw.println("<script type=\"text/javascript\">");
	              pw.println("alert('circular added successfully');");
	              pw.println("location='admin/admin_dashboard.jsp';"); // Redirect to home.jsp
	              pw.println("</script>");
	        } else {
	            pw.print("failed");
	        }
	}

}
