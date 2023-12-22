

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import bean.studentbean;
import dao.studentdao;

/**
 * Servlet implementation class coursedetails
 */
public class coursedetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public coursedetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String email  =  request.getParameter("email");
		studentbean sb = new studentbean();
		sb.setEmail(email);
		sb=studentdao.getDatabyId(email);
    
			if(sb.getCourse().equals("GATE")) {
				response.sendRedirect("student/gate.jsp?email="+sb.getEmail());
			}else if(sb.getCourse().equals("XAT")) {
				response.sendRedirect("student/xat.jsp?email="+sb.getEmail());
			}else if(sb.getCourse().equals("MAT")) {
				response.sendRedirect("student/mat.jsp?email="+sb.getEmail());
			}else if(sb.getCourse().equals("GRE")) {
				response.sendRedirect("student/gre.jsp?email="+sb.getEmail());
			}else if(sb.getCourse().equals("CAT")) {
				response.sendRedirect("student/cat.jsp?email="+sb.getEmail());
			}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
