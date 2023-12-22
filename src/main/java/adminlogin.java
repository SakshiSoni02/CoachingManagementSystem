

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class adminlogin
 */
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String username="admin@gmail.com";
		String password="1234";
		if(username.equals(request.getParameter("email"))&& password.equals(request.getParameter("pass")))
		{
			HttpSession session =request.getSession();
			session.setAttribute("admin", username);
			response.sendRedirect("admin/admin_dashboard.jsp");
		}else {
			pw.print("incorrect email or password");
		}
	
	
	}
	}


